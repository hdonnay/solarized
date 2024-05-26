local fmt = require('solarized.fmt')
local p = require('solarized.palette')

return {
  markdownH1 = { fmt('b'), p.fg('cyan') },
  markdownH2 = { fmt('b'), p.fg('red') },
  markdownH3 = { fmt('b'), p.fg('green') },
  markdownH1Delimiter = { p.fg('cyan') },
  markdownH2Delimiter = { p.fg('red') },
  markdownH3Delimiter = { p.fg('green') },
}
