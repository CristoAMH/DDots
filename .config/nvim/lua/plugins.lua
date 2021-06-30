return require('packer').startup(function(use)
    
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}
  use {'nvim-treesitter/nvim-treesitter'}  

  -- Color scheme
  use { 'sainnhe/gruvbox-material' }
  use {'sheerun/vim-polyglot'}


  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- LSP and completion
  use { 'neovim/nvim-lspconfig' }
  use { 'nvim-lua/completion-nvim' }

  -- Lua development
  use { 'tjdevries/nlua.nvim' }


  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- GIT
  use { 'tpope/vim-fugitive' }
  use { 'rhysd/git-messenger' }
  use { 'tanvirtin/vgit.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- Snippets
  use { 'honza/vim-snippets' }
  use { 'SirVer/ultisnips' }

  use { 'glepnir/dashboard-nvim' }

  use {'kyazdani42/nvim-web-devicons'}
  use {'kyazdani42/nvim-tree.lua'}

end)

