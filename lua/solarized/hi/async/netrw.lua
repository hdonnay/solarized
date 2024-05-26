local fmt = require('solarized.fmt')
local p = require('solarized.palette')

return {
  netrwMarkFile = { fmt('uu') },
  netrwCompress = { fmt(), p.fg('green'), p.bg('back') },
  netrwData = { fmt(), p.fg('blue'), p.bg('back') },
  netrwHdr = { fmt('i') },
  netrwLex = { fmt('i') },
  netrwYacc = { fmt('i') },
  netrwLib = { fmt(), p.fg('yellow') },
  netrwObj = { fmt(), p.fg('red') },
  netrwTilde = { fmt(), p.fg('red') },
  netrwTmp = { fmt(), p.fg('red') },
  netrwTags = { fmt(), p.fg('red') },
  netrwDoc = { fmt('b'), p.fg('yellow') },
  netrwSymlink = { fmt('c'), p.fg('cyan') },
}
