local palette     = {
  base03  = 8,
  base02  = 0,
  base01  = 10,
  base00  = 11,
  base0   = 12,
  base1   = 14,
  base2   = 7,
  base3   = 15,
  yellow  = 3,
  orange  = 9,
  red     = 1,
  magenta = 5,
  violet  = 13,
  blue    = 4,
  cyan    = 6,
  green   = 2,
}
palette.black     = palette.base03
palette.gray      = palette.base02
palette.lightblue = palette.base01
palette.white     = palette.base2
palette.NONE      = 'NONE'

if vim.o.background == 'dark' then
  palette.back = palette.base03
  palette.back_norm = palette.base03
  palette.back_emph = palette.base02
  palette.text = palette.base0
  palette.text_norm = palette.base0
  palette.text_alt = palette.base01
  palette.text_emph = palette.base1
else
  palette.back = palette.base3
  palette.back_norm = palette.base3
  palette.back_emph = palette.base2
  palette.text = palette.base00
  palette.text_norm = palette.base00
  palette.text_alt = palette.base1
  palette.text_emph = palette.base01
end

local name = {
  [0] = 'Black',
  [1] = 'DarkBlue',
  [2] = 'DarkGreen',
  [3] = 'DarkCyan',
  [4] = 'DarkRed',
  [5] = 'DarkMagenta',
  [6] = 'DarkYellow',
  [7] = 'Gray',
  [8] = 'DarkGray',
  [9] = 'Blue',
  [10] = 'Green',
  [11] = 'Cyan',
  [12] = 'Red',
  [13] = 'Magenta',
  [14] = 'Yellow',
  [15] = 'White',
}

local M = {}

---@param n number? Termcolor number
---@return string name Vim-equivalent name
function M.color_name(n)
  if not name[n] then
    error(string.format('unknown terminal color number: %d', n), 2)
  end
  return name[n]
end

---@param n string? highlight foreground color
---@return string fragment highlight command fragment
function M.fg(n)
  local k = 'ctermfg='
  if not n then
    return k .. 'NONE'
  end
  if not palette[n] then
    if palette['text_' .. n] then
      return k .. palette['text_' .. n]
    end
    error(string.format('unknown fg color: %q', n), 2)
  end
  return k .. palette[n]
end

---@param n string? highlight foreground color
---@return string fragment highlight command fragment
function M.bg(n)
  local k = 'ctermbg='
  if not n then
    return k .. 'NONE'
  end
  if not palette[n] then
    if palette['back_' .. n] then
      return k .. palette['back_' .. n]
    end
    error(string.format('unknown bg color: %q', n), 2)
  end
  return k .. palette[n]
end

---@param n string
---@return string fragment
function M.sp(n)
  return 'guisp=' .. (palette[n] or 'NONE')
end

return setmetatable(M, {
  __index = palette,
})
