---@class Colors
---@field term number
---@field gui string
local Colors      = {}

---@type table<string, Colors>
local palette     = {
  base03  = { term = 8, gui = '#002b36' },
  base02  = { term = 0, gui = '#073642' },
  base01  = { term = 10, gui = '#586e75' },
  base00  = { term = 11, gui = '#657b83' },
  base0   = { term = 12, gui = '#839496' },
  base1   = { term = 14, gui = '#93a1a1' },
  base2   = { term = 7, gui = '#eee8d5' },
  base3   = { term = 15, gui = '#fdf6e3' },
  yellow  = { term = 3, gui = '#b58900' },
  orange  = { term = 9, gui = '#cb4b16' },
  red     = { term = 1, gui = '#dc322f' },
  magenta = { term = 5, gui = '#d33682' },
  violet  = { term = 13, gui = '#6c71c4' },
  blue    = { term = 4, gui = '#268bd2' },
  cyan    = { term = 6, gui = '#2aa198' },
  green   = { term = 2, gui = '#859900' },
}
palette.black     = palette.base03
palette.gray      = palette.base02
palette.lightblue = palette.base01
palette.white     = palette.base2
-- NONE is hard-coded in the printer function
--palette.NONE = 'NONE'

if vim.o.background == 'dark' then
  palette.back = palette.base03
  palette.back_norm = palette.base03
  palette.back_emph = palette.base02
  palette.text = palette.base0
  palette.text_norm = palette.base0
  palette.text_alt = palette.base01
  palette.text_emph = palette.base1
else
  palette.back = palette.base3
  palette.back_norm = palette.base3
  palette.back_emph = palette.base2
  palette.text = palette.base00
  palette.text_norm = palette.base00
  palette.text_alt = palette.base1
  palette.text_emph = palette.base01
end

local lookup_name = {
  [0] = 'Black',
  [1] = 'DarkBlue',
  [2] = 'DarkGreen',
  [3] = 'DarkCyan',
  [4] = 'DarkRed',
  [5] = 'DarkMagenta',
  [6] = 'DarkYellow',
  [7] = 'Gray',
  [8] = 'DarkGray',
  [9] = 'Blue',
  [10] = 'Green',
  [11] = 'Cyan',
  [12] = 'Red',
  [13] = 'Magenta',
  [14] = 'Yellow',
  [15] = 'White',
}

---@class Printer
---@field pre string
---@field suf string
local Printer = {}

function Printer:new(pre, suf)
  local o = {
    pre = pre,
    suf = suf,
  }
  setmetatable(o, self)
  self.__index = self
  return o
end

---@function print
---@param name string?
function Printer:print(name)
  if not name or name == 'NONE' then
    return string.format('cterm%s=NONE gui%s=NONE', self.suf, self.suf)
  end
  if name == self.suf then
    return string.format('cterm%s=%s gui%s=%s', self.suf, name, self.suf, name)
  end

  local c = palette[name] or palette[self.pre .. name]
  if not c then
    error(string.format('unknown %s color: %q', self.suf, name), 2)
  end
  return string.format('cterm%s=%s gui%s=%s', self.suf, c.term, self.suf, c.gui)
end

local fg = Printer:new('text_', 'fg')
local bg = Printer:new('back_', 'bg')

local M = {}

---@param n number? Termcolor number
---@return string name Vim-equivalent name
function M.color_name(n)
  if not lookup_name[n] then
    error(string.format('unknown terminal color number: %d', n), 2)
  end
  return lookup_name[n]
end

---@param n string? highlight foreground color
---@return string fragment highlight command fragment
function M.fg(n)
  return fg:print(n)
end

---@param n string? highlight foreground color
---@return string fragment highlight command fragment
function M.bg(n)
  return bg:print(n)
end

---@param n string
---@return string fragment
function M.sp(n)
  local v = 'NONE'
  if palette[n] then
    v = palette[n].gui
  end
  return 'guisp=' .. v
end

return setmetatable(M, {
  __index = palette,
})
