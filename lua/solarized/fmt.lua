---@alias FmtAttr "bold"|"underline"|"undercurl"|"underdouble"|"underdotted"|"underdashed"|"strikethrough"|"reverse"|"italic"|"standout"|"altfont"|"nocombine"

---@type table<FmtAttr, string>
local fmt = {
  bold          = ',bold',
  underline     = ',underline',
  undercurl     = ',undercurl',
  underdouble   = ',underdouble',
  underdotted   = ',underdotted',
  underdashed   = ',underdashed',
  strikethrough = ',strikethrough',
  reverse       = ',reverse',
  italic        = ',italic',
  standout      = ',standout',
  altfont       = ',altfont',
  nocombine     = ',nocombine',
}

---@type table<string, FmtAttr>
local alias = {
  i = "italic",
  u = "underline",
  c = "undercurl",
  uu = "underdouble",
  ['u.'] = "underdotted",
  ['u-'] = "underdashed",
  b = "bold",
  r = "reverse",
  s = "standout",
  st = "strikethrough",
  a = "altfont",
  nc = "nocombine",
}

---@operator call(string[]): string
local M = {
  bold          = fmt.bold,
  underline     = fmt.underline,
  undercurl     = fmt.undercurl,
  underdouble   = fmt.underdouble,
  underdotted   = fmt.underdotted,
  underdashed   = fmt.underdashed,
  strikethrough = fmt.strikethrough,
  reverse       = fmt.reverse,
  italic        = fmt.italic,
  standout      = fmt.standout,
  altfont       = fmt.altfont,
  nocombine     = fmt.nocombine,
}

---Disable the named attribute.
---
---To enable attributes, unload and re-load the module.
---@param ... FmtAttr[]
function M:disable(...)
  local attrs = { ... }
  for _, attr in ipairs(attrs) do
    if fmt[attr] == nil then
      error('bad formatting attribute: ' .. attr)
    end
    self[attr] = ''
  end
end

return setmetatable(M, {
  __call = function(self, ...)
    local args = { ... }
    local s = 'cterm=NONE'
    if #args == 0 then
      return s
    end
    for _, n in ipairs(args) do
      s = s .. (self[n] or self[alias[n]])
    end
    return s
  end
})
