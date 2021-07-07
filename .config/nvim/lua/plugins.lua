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

    -------------
    -- Color scheme
    -------------
    -- use { 'sainnhe/gruvbox-material' }
    use {'folke/tokyonight.nvim'}
    use {'kyazdani42/nvim-web-devicons'}

    -------------
    -- Treesitter
    -------------
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'JoosepAlviste/nvim-ts-context-commentstring',
        requires = 'nvim-treesitter/nvim-treesitter',
    }

    use {
        'windwp/nvim-ts-autotag',
        requires = 'nvim-treesitter/nvim-treesitter',
    }

    use{
        "andymass/vim-matchup",
        event = "CursorMoved",
    }

    ---------------
    -- Indent lines
    ---------------
    use {
        'lukas-reineke/indent-blankline.nvim'
    }


    ---------------
    -- Fuzzy finder
    ---------------
    use {
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim','nvim-telescope/telescope-fzy-native.nvim'}
    }

    ---------------
    -- LSP and completion
    ---------------
    use { 'neovim/nvim-lspconfig' }
    use {"glepnir/lspsaga.nvim"}
    use {"kabouzeid/nvim-lspinstall"}
    use { 'nvim-lua/completion-nvim' }

    ---------------
    -- Lua development
    ---------------
    use { 'tjdevries/nlua.nvim' }

    ---------------
    -- GIT
    ---------------
    use { 'rhysd/git-messenger.vim' }
    use {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("config.gitsigns").config()
        end,
        event = "BufRead",
        requires = { "nvim-lua/plenary.nvim" },
    }

    -- TODO: Discober why it's not working
    --[[ use {
        "f-person/git-blame.nvim"
    } ]]

    ---------------
    -- Snippets
    ---------------
    use { 'honza/vim-snippets' }
    use { 'SirVer/ultisnips' }

    ---------------
    -- TREE
    ---------------
    use {'kyazdani42/nvim-tree.lua'}

    ---------------
    -- Better comments
    ---------------
    use {'b3nj5m1n/kommentary'}

    ---------------
    -- Smooth Scrolling
    ---------------
    use{
        "karb94/neoscroll.nvim",
        keys = { "<C-u>", "<C-d>", "C-b", "gg", "G" },
        config = [[require('config.scroll')]]
    }

    ---------------
    -- Miscellaneous
    ---------------
    use { 'glepnir/dashboard-nvim' }
    use{ "tweekmonster/startuptime.vim", cmd = "StartupTime" }


end)

