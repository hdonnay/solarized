local fmt = require('solarized.fmt')
local p = require('solarized.palette')

return {
  TelescopePromptBorder = { p.fg('violet'), p.bg() },
  TelescopeResultsBorder = { p.fg('emph'), p.bg() },
  TelescopePreviewBorder = { p.fg('emph'), p.bg() },
  TelescopeSelectionCaret = { p.fg('yellow'), p.bg() },
  TelescopeSelection = { p.fg('yellow'), p.bg() },
  TelescopeMatching = { fmt('r') },
  TelescopeNormal = { p.fg('text'), p.bg('back') },
}
