---@diagnostic disable: assign-type-mismatch
---@type MappingsTable
local M = require('custom.overrides');

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["<leader>sf"] = { "<cmd>w<cr>", "write file" }, -- Ctrl + S
    ["<leader>sa"] = { "<cmd>wall<cr>", "save all" },

    ["<leader>w"] = { "<cmd>close<cr>", "close window"}
  },
}

M.nvterm = {
  n = {
    ["<leader>h"] = { "<cmd>split<cr>", "horizontal split" },
    ["<leader>v"] = { "<cmd>vsplit<cr>", "vertical split" },
  }
}

M.nvimtree = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <cr>", "toggle explorer" },
    ["<leader>o"] = {
      function()
        if vim.bo.filetype == "NvimTree" then
          vim.cmd.wincmd "p"
        else
          vim.cmd "NvimTreeFocus"
        end
      end,
      "toggle explorer focus",
    },
  },
}


return M;
