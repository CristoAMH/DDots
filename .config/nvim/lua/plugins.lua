local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

vim.cmd([[packadd packer.nvim]])
vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

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
      requires = {'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim','nvim-telescope/telescope-fzy-native.nvim'}
  }

  -- LSP and completion
  use { 'neovim/nvim-lspconfig' }
  use { 'nvim-lua/completion-nvim' }

  -- Lua development
  use { 'tjdevries/nlua.nvim' }

  -- GIT
  use { 'tpope/vim-fugitive' }
  use { 'rhysd/git-messenger' }

  -- Snippets
  use { 'honza/vim-snippets' }
  use { 'SirVer/ultisnips' }

  use { 'glepnir/dashboard-nvim' }

  use {'kyazdani42/nvim-web-devicons'}
  use {'kyazdani42/nvim-tree.lua'}

  use {'b3nj5m1n/kommentary'}

-- Smooth Scrolling
    use({
      "karb94/neoscroll.nvim",
      keys = { "<C-u>", "<C-d>", "C-b", "gg", "G" },
      config = [[require('config.scroll')]]
    })

    use({ "tweekmonster/startuptime.vim", cmd = "StartupTime" })

    use({
      "andymass/vim-matchup",
      event = "CursorMoved",
    })

end)

