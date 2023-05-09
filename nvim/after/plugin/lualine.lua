local custom_gruvbox = require'lualine.themes.gruvbox'

-- Change the background of lualine_c section for normal mode
custom_gruvbox.normal.a.bg = '#3A3A3A'
custom_gruvbox.normal.a.fg = '#EEEEEE'
custom_gruvbox.normal.b.bg = '#4E4E4E'
custom_gruvbox.normal.b.fg = '#959595'
custom_gruvbox.normal.c.bg = '#1C1C1C'
custom_gruvbox.normal.c.fg = '#959595'

custom_gruvbox.insert.a.bg = '#3A3A3A'
custom_gruvbox.insert.a.fg = '#EEEEEE'
custom_gruvbox.insert.b.bg = '#4E4E4E'
custom_gruvbox.insert.b.fg = '#959595'
custom_gruvbox.insert.c.bg = '#1C1C1C'
custom_gruvbox.insert.c.fg = '#959595'


custom_gruvbox.visual.a.bg = '#3A3A3A'
custom_gruvbox.visual.a.fg = '#EEEEEE'
custom_gruvbox.visual.b.bg = '#4E4E4E'
custom_gruvbox.visual.b.fg = '#959595'
custom_gruvbox.visual.c.bg = '#1C1C1C'
custom_gruvbox.visual.c.fg = '#959595'

custom_gruvbox.replace.a.bg = '#3A3A3A'
custom_gruvbox.replace.a.fg = '#EEEEEE'
custom_gruvbox.replace.b.bg = '#4E4E4E'
custom_gruvbox.replace.b.fg = '#959595'
custom_gruvbox.replace.c.bg = '#1C1C1C'
custom_gruvbox.replace.c.fg = '#959595'


custom_gruvbox.command.a.bg = '#3A3A3A'
custom_gruvbox.command.a.fg = '#EEEEEE'
custom_gruvbox.command.b.bg = '#4E4E4E'
custom_gruvbox.command.b.fg = '#959595'
custom_gruvbox.command.c.bg = '#1C1C1C'
custom_gruvbox.command.c.fg = '#959595'


custom_gruvbox.inactive.a.bg = '#3A3A3A'
custom_gruvbox.inactive.a.fg = '#EEEEEE'
custom_gruvbox.inactive.b.bg = '#4E4E4E'
custom_gruvbox.inactive.b.fg = '#959595'
custom_gruvbox.inactive.c.bg = '#1C1C1C'
custom_gruvbox.inactive.c.fg = '#959595'

require('lualine').setup({ options = { theme = 'gruvbox' }})
