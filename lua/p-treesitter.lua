require('nvim-treesitter.configs').setup{
  highlight = {
    enable = true,
    disable = {}
  },
  indent = {
    enable = true,
    disable = {}
  },
  ensure_installed = {
    'python',
    'lua',
    'json',
    'yaml',
  },
  autotag = {
    enable = true,
  }
}
