local p = require('solarized.palette')

return {
  normal = {
    a = { fg = p.back, bg = p.blue, gui = 'bold' },
    b = { fg = p.text, bg = p.back_emph },
    c = { fg = p.text_emph, bg = p.back },
  },
  insert = {
    a = { fg = p.back, bg = p.green, gui = 'bold' }
  },
  visual = {
    a = { fg = p.back, bg = p.yellow, gui = 'bold' }
  },
  replace = {
    a = { fg = p.back, bg = p.red, gui = 'bold' }
  },
  inactive = {
    a = { fg = p.text, bg = p.back_emph, gui = 'bold' },
    b = { fg = p.back, bg = p.text_alt },
    c = { fg = p.text_alt, bg = p.back_emph },
  },
}
