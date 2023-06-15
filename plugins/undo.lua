return {
  {
    "mbbill/undotree",
    event = "User AstroFile",
  },
  {
    "tzachar/highlight-undo.nvim",
    config = function()
      require("highlight-undo").setup {
        hlgroup = "HighlightUndo",
        duration = 300,
        keymaps = {
          { "n", "u", "undo", {} },
          { "n", "U", "redo", {} },
          { "n", "<C-r>", "redo", {} },
        },
      }
    end,
    event = "User AstroFile",
  },
}
