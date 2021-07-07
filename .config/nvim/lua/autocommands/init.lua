vim.api.nvim_exec(
[[
    augroup typescript
        au!
        autocmd BufNewFile,BufRead *.js   set filetype=typescriptreact
        autocmd BufNewFile,BufRead *.jsx   set filetype=typescriptreact
    augroup END
]], false)
