---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>sf"] = { "<cmd>w<cr>", "Save File" },
    ["<leader>sa"] = { "<cmd>wall<cr>", "Save All" },
  },
}


M.nvimtree = {
  plugin = true,

  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <cr>", "Toggle Explorer" },
    ["<leader>o"] = {
      function()
        if vim.bo.filetype == "NvimTree" then
          vim.cmd.wincmd "p"
        else
          vim.cmd "NvimTreeFocus"
        end
      end,
      "Toggle Explorer Focus",
    },
  },
}

return M
