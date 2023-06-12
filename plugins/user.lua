return {
  {
    "nvim-pack/nvim-spectre",
    event = "VeryLazy",
  },
  {
    "wakatime/vim-wakatime",
    event = "VeryLazy",
  },
  {
    "mbbill/undotree",
    event = "User AstroFile",
  },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    config = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  },
}
