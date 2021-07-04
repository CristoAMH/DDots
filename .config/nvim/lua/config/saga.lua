local saga = require 'lspsaga'


saga.init_lsp_saga {
  code_action_icon = '💡',
  border_style = "round",
}

local utils = require('utils')

-- Saga
utils.map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {silent = true})
utils.map('n', 'gD', "<cmd>lua require'lspsaga.provider'.preview_definition()<cr>", {silent = true})
utils.map('n', 'gr', "<cmd>lua require'lspsaga.provider'.lsp_finder()<cr>", {silent = true})
utils.map('n', '<C-Space>', "<cmd>lua require'lspsaga.codeaction'.code_action()<cr>", {silent = true})
utils.map('n', '<Leader>ca', "<cmd>lua require'lspsaga.codeaction'.code_action()<cr>", {silent = true})
utils.map('v', '<Leader>ca', "<cmd>'<,'>lua require'lspsaga.codeaction'.code_action()<cr>", {silent = true})
utils.map('n', '<Leader>cr', "<cmd>lua require'lspsaga.rename'.rename()<cr>", {silent = true})
utils.map('n', '<Leader>cf', "<cmd>lua vim.lsp.buf.formatting()<cr>", {silent = true})
utils.map('v', '<Leader>cf', "<cmd>'<.'>lua vim.lsp.buf.formatting()<cr>", {silent = true})
utils.map('n', '<Leader>K', "<cmd>lua require'lspsaga.hover'.render_hover_dnoc()<cr>", {silent = true})
utils.map('n', '<C-K>', "<cmd>lua require'lspsaga.signaturehelp'.signature_help()<cr>", {silent = true})
utils.map('n', '[g', "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<cr>", {silent = true})
utils.map('n', ']g', "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<cr>", {silent = true})
utils.map('n', '<C-f>', "<cmd>lua require'lspsaga.action'.smart_scroll_with_saga(1)<cr>", {silent = true})
utils.map('n', '<C-b>', "<cmd>lua require'lspsaga.action'.smart_scroll_with_saga(-1)<cr>", {silent = true})
utils.map('n', '<Leader>cl', "<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<cr>", {silent = true})
utils.map('n', '<Leader>cc', "<cmd>lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<cr>", {silent = true})

--vim.api.nvim_exec([[
-- autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
-- autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 100)
-- autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
-- autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
-- autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 100)
--    ]],
--    true)
