require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = vim.g.colors_name == 'lightning' and 'PaperColor' or 'auto',
    -- section_separators = {left= '', right= ''},
    -- component_separators = {left= '', right= ''},
    section_separators = '',
    component_separators = '|', 
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'diff', 'diagnostics'},
    lualine_c = {
        {
            'filename',
             file_status = true,      -- Displays file status (readonly status, modified status)
             newfile_status = false,   -- Display new file status (new file means no write after created)
             path = 0,                -- 0: Just the filename
                                      -- 1: Relative path
                                      -- 2: Absolute path
                                      -- 3: Absolute path, with tilde as the home directory

             shorting_target = 20,    -- Shortens path

             symbols = {
               modified = '[+]',      -- Text to show when the file is modified.
               readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
               unnamed = '[No Name]', -- Text to show for unnamed buffers.
               newfile = '[New]',     -- Text to show for new created file before first writting
             }
         }
     },
    lualine_x = {
        {
            'filetype',
            icons_enabled = false
        }, 

        {
            'fileformat', 
            icons_enabled = true, 
            symbols = {
                unix = 'LF', 
                dos = 'CRLF', 
                mac = 'CR'
            }
        },

        {
            'encoding'
        },
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
      lualine_a = {}, 
      lualine_b = {},
      lualine_c = 
      {
          {
            'buffers',
            mode = 0
          }
      },
      lualine_x = {'branch'},
      lualine_y = {},
      lualine_z = {}
      -- lualine_z = {{'tabs', mode = 2}}
  },
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
