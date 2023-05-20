local autocmd = vim.api.nvim_create_autocmd

vim.api.nvim_set_option("relativenumber", true)            -- set rnu
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]] -- auto-format on save

autocmd("vimresized", {
  pattern = "*",
  command = "tabdo wincmd =",
})
