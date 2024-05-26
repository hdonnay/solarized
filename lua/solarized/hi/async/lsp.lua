local fmt = require('solarized.fmt')
local p = require('solarized.palette')


return {
  LspReferenceText = { p.fg(), p.bg('emph') },
  LspReferenceRead = { p.sp('orange'), fmt('c') },
  LspReferenceWrite = { p.sp('violet'), fmt('c') },

  -- TODO(hank)
  LspCodeLens = nil,
  LspCodeLensSeparator = nil,
  LspSignatureActiveParameter = nil,

  LspDiagnosticsDefaultError = { link = 'DiagnosticError' },
  LspDiagnosticsDefaultWarning = { link = 'DiagnosticWarn' },
  LspDiagnosticsDefaultInformation = { link = 'DiagnosticInfo' },
  LspDiagnosticsDefaultHint = { link = 'DiagnosticHint' },

  LspDiagnosticsSignError = { link = 'DiagnosticSignError' },
  LspDiagnosticsSignWarning = { link = 'DiagnosticSignWarn' },
  LspDiagnosticsSignInformation = { link = 'DiagnosticSignInfo' },
  LspDiagnosticsSignHint = { link = 'DiagnosticSignHint' },

  LspDiagnosticsFloatingError = { link = 'DiagnosticError' },
  LspDiagnosticsFloatingWarning = { link = 'DiagnosticWarn' },
  LspDiagnosticsFloatingInformation = { link = 'DiagnosticInfo' },
  LspDiagnosticsFloatingHint = { link = 'DiagnosticHint' },

  LspDiagnosticsVirtualTextError = { link = 'DiagnosticError' },
  LspDiagnosticsVirtualTextWarning = { link = 'DiagnosticWarn' },
  LspDiagnosticsVirtualTextInformation = { link = 'DiagnosticInfo' },
  LspDiagnosticsVirtualTextHint = { link = 'DiagnosticHint' },

  LspDiagnosticsUnderlineError = { p.sp('red'), fmt('c') },
  LspDiagnosticsUnderlineWarning = { p.sp('orange'), fmt('c') },
  LspDiagnosticsUnderlineInformation = { p.sp('blue'), fmt('c') },
  LspDiagnosticsUnderlineHint = { p.sp('text_alt'), fmt('c') },
}
