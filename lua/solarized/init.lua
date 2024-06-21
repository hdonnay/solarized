local modname = ...
-- Find this file. The stock lua loader passes this as the second value in
-- "...", but the nvim loader seems to not work that way.
local modpath = vim.loader.find(modname, {})[1].modpath
-- Find the root for the hightlighting modules.
local hi_root = vim.fs.dirname(modpath) .. '/hi'

local themename = 'solarized'

---Findmods returns an iterator returning relative lua modname for loading all highlighing tables.
---The `async` parameter controls if the async subdirectory is searched.
local function findmods(root, async)
  local prefix = themename .. '.hi.' .. (async and 'async.' or '')
  local iter = vim.fs.dir(root .. (async and '/async' or ''))
  return function(dir)
    while true do
      local n, t = dir()
      if not n then
        return nil
      end
      if t == 'file' then
        return prefix .. string.sub(n, 1, -5)
      end
    end
  end, iter
end

---Load constructs a large vim command from the passed table of fragments or links.
local function load(tbl)
  local cmd = {}
  for g, h in pairs(tbl) do
    local l
    if h.link then
      l = 'link ' .. g .. ' ' .. h.link
    elseif #h ~= 0 then
      l = g .. ' ' .. table.concat(h, ' ')
    end
    if l then
      table.insert(cmd, 'hi! ' .. l)
    end
  end
  vim.cmd(table.concat(cmd, '\n'))
end

---Load_mods does what it says on the tin.
local function load_mods(async)
  for mod in findmods(hi_root, async) do
    load(require(mod))
    package.loaded[mod] = nil
  end
end

vim.api.nvim_create_autocmd('ColorScheme', {
  once = true,
  callback = function(ev)
    if ev.match ~= themename then
      return
    end
    local packpath = vim.fs.dirname(vim.fs.dirname(modpath))
    for _, p in ipairs(vim.opt.runtimepath:get()) do
      if p == packpath then
        vim.opt.runtimepath:remove(p)
        return
      end
    end
  end
})

local M = {}

---@class (exact) Options
---@field force_sync boolean? Force all the "async" highlighting to be loaded before returning.
---@field disable_format FmtAttr[]? Disable use of specific kinds of formatting.

---Init initializes the theme.
---@param opts Options? Initialization options.
function M.init(opts)
  if not opts then
    opts = {}
  end

  if opts.disable_format then
    local fmt = require('solarized.fmt')
    fmt:disable(table.unpack(opts.disable_format))
  end

  vim.opt.termguicolors = false
  if vim.fn.exists('syntax_on') == 1 then
    vim.cmd('syntax reset')
  end
  vim.cmd('highlight clear')
  load_mods(false)

  if opts.force_sync then
    load_mods(true)
  else
    local async
    ---@diagnostic disable-next-line: undefined-field
    async = vim.loop.new_async(vim.schedule_wrap(function()
      load_mods(true)
      async:close()
    end))
    async:send()
  end

  vim.g.colors_name = themename
end

---`Unload` removes all the lua packages from the loader, allowing them to be
---reloaded from disk.
function M.unload()
  for mod in pairs(package.loaded) do
    if vim.startswith(mod, themename) then
      package.loaded[mod] = nil
    end
  end
end

return M
