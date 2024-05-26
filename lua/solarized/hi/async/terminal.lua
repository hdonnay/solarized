local p = require('solarized.palette')

for i = 0, 15 do
  vim.g['terminal_color_' .. i] = p.color_name(i)
end

return {}
