local fmt = require('solarized.fmt')
local p = require('solarized.palette')
local gui_running = vim.fn.has('gui_running') == 1

---@type Todo[]
return {
  ColorColumn = { fmt(), p.fg(), p.bg('emph') }, --  used for the columns set with 'colorcolumn'
  Conceal = { fmt(), p.fg('blue'), p.bg() },     -- placeholder characters substituted for concealed text (see 'conceallevel')
  CurSearch = { link = 'Search' },
  lCursor = { link = 'Cursor' },
  Cursor = { fmt(), p.fg('back'), p.bg('text') },       -- the character under the cursor
  CursorIM = { fmt('u.'), p.fg('back'), p.bg('text') }, -- like Cursor, but used when in IME mode
  CursorColumn = { fmt(), p.fg(), p.bg('emph') },
  CursorLine = { fmt(), p.fg(), p.bg('emph'), p.sp('emph') },
  --DashboardCenter = { fg = palette.gray },
  --DashboardFooter = { fg = palette.green, style = _fmt.italic },
  --DashboardHeader = { fg = palette.gray },
  --DashboardShortCut = { fg = palette.gray },
  Directory = { fmt(), p.fg('blue'), p.bg() },                                                    -- directory names (and other special names in listings)
  DiffAdd = { fmt(gui_running and 'b' or nil), p.fg('green'), p.bg('emph'), p.sp('green') },      -- diff mode: Added line
  DiffChange = { fmt(gui_running and 'b' or nil), p.fg('yellow'), p.bg('emph'), p.sp('yellow') }, -- diff mode: Changed line
  DiffDelete = { fmt(gui_running and 'b' or nil), p.fg('red'), p.bg('emph') },                    -- diff mode: Deleted line
  DiffText = { fmt(gui_running and 'b' or nil), p.fg('blue'), p.bg('emph'), p.sp('blue') },       -- diff mode: Changed text within a changed line
  EndOfBuffer = { link = 'NonText' },
  TermCursor = { link = 'Cursor' },
  TermCursorNC = { fmt('u') },
  ErrorMsg = { fmt('r'), p.fg('red'), p.bg() },
  WinSeparator = { fmt(), p.fg('alt'), p.bg('emph') },
  VertSplit = { link = 'WinSeparator' },
  Folded = { fmt('u', 'b'), p.fg('text'), p.bg('emph'), p.sp('base03') },
  FoldColumn = { fmt(), p.fg('alt'), p.bg('emph') },
  SignColumn = { fmt(), p.fg('alt'), p.bg('emph') },
  IncSearch = { fmt('s'), p.fg('orange'), p.bg() },
  Substitute = { link = 'Search' },
  LineNr = { fmt(), p.fg('alt'), p.bg('emph') },
  LineNrAbove = { link = 'LineNr' },
  LineNrBelow = { link = 'LineNr' },
  CursorLineNr = { p.fg('alt'), p.bg() },
  CursorLineFold = { fmt(), p.fg('text'), p.bg('emph') },
  CursorLineSign = { fmt(), p.fg('text'), p.bg('emph') },
  MatchParen = { fmt('b'), p.fg('red'), p.bg('text_alt') },
  ModeMsg = { fmt(), p.fg('blue'), p.bg() },
  MsgArea = { link = 'Normal' },
  MsgSeparator = { link = 'StatusLine' },
  MoreMsg = { fmt(), p.fg('blue'), p.bg() },
  NonText = { fmt('b'), p.fg('base00'), p.bg() },
  Normal = { fmt(), p.fg('text'), p.bg('back') }, -- normal text and background color
  NormalFloat = { link = 'Normal' },              -- normal text and background color in floating windows
  FloatBoarder = { link = 'WinSeparator' },
  FloatTitle = { link = 'Title' },
  NormalNC = { link = 'Normal' },
  Pmenu = { fmt(), p.fg('text'), p.bg('back'), fmt('r', 'b') },
  PmenuSel = { fmt(), p.fg('alt'), p.bg('base2'), fmt('r', 'b') },
  PmenuKind = { link = 'Pmenu' },
  PmenuKindSel = { link = 'PmenuSel' },
  PmenuExtra = { link = 'Pmenu' },
  PmenuExtraSel = { link = 'PmenuSel' },
  PmenuSbar = { fmt(), p.fg('base2'), p.bg('base0'), fmt('r', 'b') },
  PmenuThumb = { fmt(), p.fg('text'), p.bg('back'), fmt('r', 'b') },
  Question = { fmt('b'), p.fg('cyan'), p.bg() },
  QuickFixLine = { link = 'Search' },
  Search = { fmt('r'), p.fg('yellow'), p.bg() },
  SpecialKey = { fmt('b'), p.fg('base00'), p.bg('emph') },
  SpellBad = { fmt('c'), p.fg(), p.bg(), p.sp('red') },
  SpellCap = { fmt('c'), p.fg(), p.bg(), p.sp('violet') },
  SpellLocal = { fmt('c'), p.fg(), p.bg(), p.sp('cyan') },
  SpellRare = { fmt('c'), p.fg(), p.bg(), p.sp('yellow') },
  StatusLine = { fmt(), p.fg('emph'), p.bg('emph'), fmt('r', 'b') },
  StatusLineNC = { fmt(), p.fg('base00'), p.bg('emph'), fmt('r', 'b') },
  Tabline = { fmt('u'), p.fg('text'), p.bg('emph'), p.sp('text') },
  TabLineFill = { fmt('u'), p.fg('text'), p.bg('emph'), p.sp('text') },
  TablineSel = { fmt('u'), p.fg('alt'), p.bg('base2'), p.sp('text'), fmt('r', 'b', 'u') },
  Title = { fmt('b'), p.fg('orange'), p.bg() },
  Visual = { fmt(), p.fg('alt'), p.bg('back'), fmt('r', 'b') },
  VisualNOS = { fmt('s'), p.fg(), p.bg('emph'), fmt('r', 'b') },
  WarningMsg = { fmt('b'), p.fg('red') },
  Whitespace = { link = 'NonText' },
  WildMenu = { fmt(), p.fg('base2'), p.bg('emph'), fmt('r', 'b') },
  -- WinBar
  -- WinBarNC

  --InsertMode = { fg = palette.green, bg = palette.none, style = _fmt.reverse },
  --CommandMode = { fg = palette.gray, bg = palette.none, style = _fmt.reverse },
  --NormalMode = { fg = palette.accent, bg = palette.none, style = _fmt.reverse },
  --qfLineNr = { fg = palette.highlight, bg = palette.white, style = _fmt.reverse },
  --ReplacelMode = { fg = palette.red, bg = palette.none, style = _fmt.reverse },
  --StatusLineTerm = { fmt(), colors('text', 'back') },
  --StatusLineTermNC = { fmt(), colors('text_alt') },
  --ToolbarButton = { fg = palette.text, bg = palette.none, style = _fmt.bold },
  --ToolbarLine = { fg = palette.text, bg = palette.back_alt },
  --VisualMode = { fmt('r'), colors('yellow') },
}
