local M = {}

M.obsidian = {
  path = "$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/WD_SEO",
  template_dir = "templates",
}

M.dap = {
  cpp = {
    -- dap
    adapter = {
      command = "/Users/wd_seo/.local/share/nvim/mason/bin/codelldb",
    },
  },
  python = {
    -- dap
    adapter = {
      command = "/opt/homebrew/bin/python3",
    },
  },
}

return M
