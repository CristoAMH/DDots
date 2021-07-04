    require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
  },
   indent = {
      enable = false,
    },
    context_commentstring = {
      enable = true,
    },
    autotag = {
      enable = true,
    }
}
