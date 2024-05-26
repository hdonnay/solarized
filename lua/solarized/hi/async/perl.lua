local fmt = require('solarized.fmt')
local p = require('solarized.palette')

return {
  perlHereDoc = { p.fg('emph'), p.bg('back'), fmt() },
  perlVarPlain = { p.fg('yellow'), p.bg('back'), fmt() },
  perlStatementFileDesc = { p.fg('cyan'), p.bg('back'), fmt() },
}
