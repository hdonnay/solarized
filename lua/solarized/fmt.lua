---@operator call(string[]): string
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
fmt.i = fmt.italic
fmt.u = fmt.underline
fmt.c = fmt.undercurl
fmt.uu = fmt.underdouble
fmt['u.'] = fmt.underdotted
fmt['u-'] = fmt.underdashed
fmt.b = fmt.bold
fmt.r = fmt.reverse
fmt.s = fmt.standout
fmt.st = fmt.strikethrough
fmt.a = fmt.altfont
fmt.nc = fmt.nocombine

return setmetatable(fmt, {
  __call = function(self, ...)
    local args = { ... }
    local s = 'cterm=NONE'
    if #args == 0 then
      return s
    end
    for _, n in ipairs(args) do
      s = s .. self[n]
    end
    return s
  end
})
