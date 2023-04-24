return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require("todo-comments").setup {} end,
    event = "User AstroFile",
  },
  {
    "psliwka/vim-smoothie",
    event = "VeryLazy",
  },
  {
    "easymotion/vim-easymotion",
    event = "VeryLazy",
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {
        panel = {
          auto_refresh = false,
          keymap = {
            accept = "<CR>",
            jump_prev = "[[",
            jump_next = "]]",
            refresh = "gr",
            open = "<M-CR>",
          },
        },
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<C-CR>",
            prev = "<M-[>",
            next = "<M-]>",
            dismiss = "<C-]>",
          },
        },
      }
    end,
  },
  {
    "VonHeikemen/fine-cmdline.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    event = "VeryLazy",
  },
  {
    "sjl/gundo.vim",
    event = "User AstroFile",
  },
  {
    "karb94/neoscroll.nvim",
    config = function() require("neoscroll").setup() end,
  },
  {
    "dstein64/nvim-scrollview",
    event = { "BufRead", "BufNewFile" },
    config = function() require "user.plugins.configs.nvimscroll" end,
  },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    config = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  },
}
