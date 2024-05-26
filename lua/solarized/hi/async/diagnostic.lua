local fmt = require('solarized.fmt')
local p = require('solarized.palette')

---@type Todo[]
return {
  DiagnosticError = { p.fg('red') },
  DiagnosticWarn = { p.fg('orange') },
  DiagnosticInfo = { p.fg('blue') },
  DiagnosticHint = { p.fg('alt') },
  DiagnosticOk = { p.fg('blue') },
  DiagnosticSignError = { p.fg(), p.bg('emph') },
  DiagnosticSignWarn = { p.fg(), p.bg('emph') },
  DiagnosticSignInfo = { p.fg(), p.bg('emph') },
  DiagnosticSignHint = { p.fg(), p.bg('emph') },
  DiagnosticSignOk = { p.fg(), p.bg('emph') },
  DiagnosticDeprected = { p.sp('red'), fmt('st') },
  DiagnosticUnnecessary = { link = 'Comment' },
}
