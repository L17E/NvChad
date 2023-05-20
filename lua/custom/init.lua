local autocmd = vim.api.nvim_create_autocmd

vim.api.nvim_set_option('relativenumber', true)

autocmd("vimresized", {
  pattern = "*",
  command = "tabdo wincmd =",
})
