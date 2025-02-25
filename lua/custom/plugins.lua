local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  { "mattn/efm-langserver" },

  -- { "iamcco/coc-tailwindcss" },

  -- {
  --   "Pocco81/AutoSave.nvim",
  --   lazy = false,
  -- },

  -- {
  --   "Pocco81/auto-save.nvim",
  --   lazy = false,
  --   condition = function(buf)
  --     local fn = vim.fn
  --     local undotree = vim.fn.undotree()
  --     if undotree.seq_last ~= undotree.seq_cur then
  --       return false -- don't try to save again if I tried to undo. k thanks
  --     end
  --   end,
  -- },

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
