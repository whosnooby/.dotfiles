require('nvim-treesitter.configs').setup({
  -- i kinda need parsers, y'know...
  ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'rust', 'markdown' },

  -- async ftw
  sync_install = false,

  -- yes, please install my parsers for me
  auto_install = true,

  highlight = {
    -- setting this option to false is a little counterintuitive
    -- to why this plugin is even installed
    enable = true,

    -- regex is for nerds.
    additional_vim_regex_highlighting = false,
  },
})

