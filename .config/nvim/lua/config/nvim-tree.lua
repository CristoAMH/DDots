local utils = require('utils')
utils.map('n', '<C-n>', '<cmd>:NvimTreeToggle<CR>')  
utils.map('n', '<leader>r', '<cmd>:NvimTreeRefresh<CR>') 
utils.map('n', '<leader>n', '<cmd>:NvimTreeFindFile<CR>')


local M = {}

M.find_under_cursor = function()
    local treeLib = require('nvim-tree.lib')
    local treeUtils = require('nvim-tree.utils')
    local node = treeLib.get_node_at_cursor()
    local absolute_path = node.absolute_path
    local relative_path = treeUtils.path_relative(absolute_path, treeLib.Tree.cwd)
    
    require('telescope.builtin').live_grep({search_dirs={relative_path}})
end

vim.g.nvim_tree_bindings = {
    ["<C-f>"] = ":lua require('config.nvim-tree').find_under_cursor()<cr>"
}


return M

