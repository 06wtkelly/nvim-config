--=== colorschemes ===--

-- Vague
vim.pack.add({ 'https://github.com/vague-theme/vague.nvim' })

require("vague").setup({
    transparent = true, -- If true, background is not set
    bold = true, -- Disable bold globally
    italic = true, -- Disable italic globally
    on_highlights = function(hl, colors) end,
    colors = {
        bg = '#141415',
        inactiveBg = '#1c1c24',
        fg = '#cdcdcd',
        floatBorder = '#878787',
        line = '#252530',
        comment = '#606079',
        builtin = '#b4d4cf',
        func = '#c48282',
        string = '#e8b589',
        number = '#e0a363',
        property = '#c3c3d5',
        constant = '#aeaed1',
        parameter = '#bb9dbd',
        visual = '#333738',
        error = '#d8647e',
        warning = '#f3be7c',
        hint = '#7e98e8',
        operator = '#90a0b5',
        keyword = '#6e94b2',
        type = '#9bb4bc',
        search = '#405065',
        plus = '#7fa563',
        delta = '#f3be7c',
    },
})

-- Melange
vim.pack.add({ 'https://github.com/savq/melange-nvim' })


--=== Status Line ===--
vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/nvim-lualine/lualine.nvim'
})

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
      refresh_time = 16, -- ~60fps
      events = {
        'WinEnter',
        'BufEnter',
        'BufWritePost',
        'SessionLoadPost',
        'FileChangedShellPost',
        'VimResized',
        'Filetype',
        'CursorMoved',
        'CursorMovedI',
        'ModeChanged',
      },
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
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
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}


--=== SETUPS ===--
vim.cmd.colorscheme("melange")
