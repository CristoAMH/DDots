local on_attach = require('lsp.on_attach')

local eslint = {
  lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
  lintStdin = true,
  lintFormats = { "%f:%l:%c: %m" },
  lintIgnoreExitCode = true,
}

local prettier = {
  formatCommand = "prettierd ${INPUT}",
  formatStdin = true,
}

local languages = {
  javascript = { eslint, prettier },
  javascriptreact = { eslint, prettier },
  typescript = { eslint, prettier },
  typescriptreact = { eslint, prettier },
  html = { prettier },
  yaml = { prettier },
}

local filetype_set = {}
for key, _ in pairs(languages) do
  filetype_set[key] = true
end

local filetypes = {}
for key, _ in pairs(filetype_set) do
  table.insert(filetypes, key)
end

return {
  cmd = {vim.fn.stdpath('data').."/lspinstall/efm/efm-langserver", "-logfile", vim.fn.stdpath('data').."/efm.log"},
  on_attach = on_attach,
  init_options = { documentFormatting = true },
  settings = {
    rootMarkers = {"package.json"},
    languages = languages,
  },
  filetypes = filetypes
}
