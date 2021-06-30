local utils = require('utils')
utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>')           -- jk to escape
utils.map('n', '<leader>q', '<cmd>q<CR>')           -- alternative way to scape
utils.map('n', '<C-s>', '<cmd>w<CR>')           -- alternative way to scape

-- Repurpose arrow keys for quickfix list movement
utils.map('n', '<leader>k', ':cprevious<cr>', {silent = true})
utils.map('n', '<leader>j', ':cnext<cr>', {silent = true})

