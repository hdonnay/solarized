local fmt = require('solarized.fmt')
local p = require('solarized.palette')

return {
  htmlLink = { fmt('u'), p.fg('cyan') },
  htmlH1 = { fmt('b'), p.fg('cyan') },
  htmlH2 = { fmt('b'), p.fg('red') },
  htmlH3 = { fmt('b'), p.fg('green') },
  htmlH4 = { fmt('b'), p.fg('violet') },
  htmlH5 = { fmt('b'), p.fg('yellow') },
  htmlTag = { fmt(), p.fg('text_alt'), p.bg() },
  htmlEndTag = { fmt(), p.fg('text_alt'), p.bg() },
  htmlTagN = { fmt('b'), p.fg('text_emph'), p.bg() },
  htmlTagName = { fmt('b'), p.fg('blue'), p.bg() },
  htmlSpecialTagName = { fmt('i'), p.fg('blue'), p.bg() },
  htmlArg = { fmt(), p.fg('base00'), p.bg() },
  javaScript = { fmt(), p.fg('yellow'), p.bg() },
}
