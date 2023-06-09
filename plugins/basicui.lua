return {
  {
    "echasnovski/mini.animate",
    config = function() require("mini.animate").setup() end,
    version = "*",
    event = "VeryLazy",
  },
  {
    "easymotion/vim-easymotion",
    event = "VeryLazy",
  },
  {
    "lewis6991/spellsitter.nvim",
    config = function() require("spellsitter").setup() end,
    event = "User AstroFile",
  },
  {
    "dstein64/nvim-scrollview",
    event = { "BufRead", "BufNewFile" },
    config = function() require "user.plugins.configs.nvimscroll" end,
  },
  {
    "chrisgrieser/nvim-spider",
    event = "VeryLazy",
  },
  {
    "folke/tokyonight.nvim",
    event = "VeryLazy",
  },
}
