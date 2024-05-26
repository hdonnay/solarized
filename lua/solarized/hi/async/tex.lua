local fmt = require('solarized.fmt')
local p = require('solarized.palette')

return {
  texStatement = { p.fg('cyan'), p.bg('back'), fmt() },
  texMathZoneX = { p.fg('yellow'), p.bg('back'), fmt() },
  texMathMatcher = { p.fg('yellow'), p.bg('back'), fmt() },
  texRefLabel = { p.fg('yellow'), p.bg('back'), fmt() },
}
