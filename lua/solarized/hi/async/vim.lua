local fmt = require('solarized.fmt')
local p = require('solarized.palette')

return {
  vimVar = { link = 'Identifier' },
  vimFunc = { link = 'Function' },
  vimUserFunc = { link = 'Function' },
  helpSpecial = { link = 'Special' },
  vimSet = { link = 'Normal' },
  vimSetEqual = { link = 'Normal' },
  vimCommentString = { fmt(), p.fg('violet'), p.bg() },
  vimCommand = { fmt(), p.fg('yellow'), p.bg() },
  vimCmdSep = { fmt('b'), p.fg('blue'), p.bg() },
  helpExample = { fmt(), p.fg('base1'), p.bg() },
  helpOption = { fmt(), p.fg('cyan'), p.bg() },
  helpNote = { fmt(), p.fg('magenta'), p.bg() },
  helpVim = { fmt(), p.fg('magenta'), p.bg() },
  helpHyperTextJump = { fmt('u'), p.fg('blue'), p.bg() },
  helpHyperTextEntry = { fmt(), p.fg('green'), p.bg() },
  vimIsCommand = { fmt(), p.fg('base00'), p.bg() },
  vimSynMtchOpt = { fmt(), p.fg('yellow'), p.bg() },
  vimSynType = { fmt(), p.fg('cyan'), p.bg() },
  vimHiLink = { fmt(), p.fg('blue'), p.bg() },
  vimHiGroup = { fmt(), p.fg('blue'), p.bg() },
  vimGroup = { fmt('u', 'b'), p.fg('blue'), p.bg() },
}
