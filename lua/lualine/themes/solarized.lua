local p = require('solarized.palette')

local theme = {
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

function build_theme()
  local gui_running = vim.fn.has('gui_running') == 1 or vim.g.neovide
  print("gui_running: " .. gui_running)

  local ret = {}
  for mode, t in pairs(theme) do
    ret[mode] = {}
    for seg, c in pairs(t) do
      if gui_running then
        ret[mode][seg].fg = c.fg.gui
        ret[mode][seg].bg = c.bg.gui
      else
        ret[mode][seg].fg = c.fg.term
        ret[mode][seg].bg = c.bg.term
      end
    end
  end
  return ret
end

return build_theme()
