local utils = require('utils')
local telescope = require("telescope")

utils.map('n', '<leader>ff', "<cmd>Telescope find_files<cr>")
utils.map('n', '<leader>fg', "<cmd>Telescope live_grep<cr>")
utils.map('n', '<leader>fb', "<cmd>Telescope buffers<cr>")
utils.map('n', '<leader>fh', "<cmd>Telescope help_tags<cr>")
utils.map('n', '<leader>go', "<cmd>Telescope git_status<cr>")
utils.map('n', '<leader>gb', "<cmd>Telescope git_branches<cr>")
utils.map('n', '<leader>gc', "<cmd>Telescope git_commits<cr>")
utils.map('n', '<leader>gC', "<cmd>Telescope git_bcommits<cr>")

--utils.map('n', '<leader>fd', 'lua require"telescope.builtin".find_files({search_dirs = {"~/.config/nvim"}})')

telescope.setup({
  extensions = { fzy_native = { override_generic_sorter = false, override_file_sorter = true } },

    })
telescope.load_extension("fzy_native")

