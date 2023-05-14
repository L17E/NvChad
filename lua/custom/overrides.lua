-- n, v, i, t = mode names

local M = {}
local unsetProps = { "", "" }

M.general = {
  n = {
    ["<leader>ch"] = { "<cmd> NvCheatsheet <CR>", "Mapping cheatsheet" },

    ["<leader>n"] = unsetProps,
    ["<leader>nl"] = { "<cmd> set nu! <CR>", "toggle line number" },

    ["<leader>r"] = { "<cmd> set rnu! <CR>", "toggle relative number" },
  }
}

M.lspconfig = {
  n = {
    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "lsp signature help",
    },

    ["<leader>D"] = unsetProps,
    ["<leader>ld"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "lsp definition type",
    },

    ["<leader>ra"] = unsetProps,
    ["<leader>lr"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "lsp rename",
    },

    ["<leader>fm"] = unsetProps,
    ["<leader>lf"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "lsp formatting",
    },

    ["<leader>ca"] = unsetProps,
    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "lsp action",
    },

    ["<leader>f"] = unsetProps,
    ["<leader>q"] = unsetProps,
    ["<leader>wa"] = unsetProps,
    ["<leader>wr"] = unsetProps,
    ["<leader>wl"] = unsetProps,
  },
}

M.nvimtree = {
  n = {
    ["<C-n>"] = unsetProps,
    ["<leader>e"] = unsetProps,
  },
}

M.telescope = {
  n = {
    ["<leader>cp"] = { "<cmd> Telescope help_tags <CR>", "help page" },
    ["<leader>fw"] = { "<cmd> Telescope live_grep <CR>", "find word" },

    ["<leader>cm"] = unsetProps,
    ["<leader>gm"] = { "<cmd> Telescope git_commits <CR>", "git commits" },

    ["<leader>gt"] = unsetProps,
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "git status" },

    ["<leader>pt"] = unsetProps,

    ["<leader>th"] = unsetProps,
    ["<leader>ct"] = { "<cmd> Telescope themes <CR>", "nvchad themes" },

    ["<leader>fh"] = unsetProps,
  },
}

M.nvterm = {
  n = {
    ["<leader>h"] = unsetProps,
    ["<leader>th"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "new horizontal term",
    },

    ["<leader>v"] = unsetProps,
    ["<leader>tv"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "new vertical term",
    },
  },
}

M.whichkey = {
  n = {
    ["<leader>wK"] = unsetProps,
    ["<leader>kK"] = {
      function()
        vim.cmd "WhichKey"
      end,
      "which-key all keymaps",
    },

    ["<leader>wk"] = unsetProps,
    ["<leader>kk"] = {
      function()
        local input = vim.fn.input "WhichKey: "
        vim.cmd("WhichKey " .. input)
      end,
      "which-key query lookup",
    },
  },
}

M.gitsigns = {
  n = {
    ["<leader>rh"] = unsetProps,
    ["<leader>gr"] = {
      function()
        require("gitsigns").reset_hunk()
      end,
      "Reset hunk",
    },

    ["<leader>ph"] = unsetProps,
    ["<leader>gp"] = {
      function()
        require("gitsigns").preview_hunk()
      end,
      "Preview hunk",
    },

    ["<leader>gb"] = {
      function()
        package.loaded.gitsigns.blame_line()
      end,
      "Blame line",
    },

    ["<leader>td"] = unsetProps,
    ["<leader>gt"] = {
      function()
        require("gitsigns").toggle_deleted()
      end,
      "Toggle deleted",
    },
  },
}

return M;
