-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = { "lua_ls" },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = { "prettier", "stylua" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = { "python", "codelldb" },
      handlers = {
        python = function(source_name)
          local dap = require "dap"

          -- dap.adapters.codelldb = {
          --   type = "executable",
          --   command = "/Users/wd_seo/.local/share/nvim/mason/bin/codelldb",
          --   name = "lldb",
          --   host = "127.0.0.1",
          --   port = 13000,
          -- }
          dap.adapters.cpp = {
            type = "executable",
            name = "codelldb", -- Updated name to match the adapter definition
            command = "/Users/wd_seo/.local/share/nvim/mason/bin/codelldb",
          }

          -- C++ Configuration
          dap.configurations.cpp = {
            {
              name = "Launch",
              type = "codelldb", -- Updated to use the correct adapter name
              request = "launch",
              program = "${file}",
              cwd = "${workspaceFolder}",
              stopOnEntry = false,
              args = {},
              runInTerminal = true,
            },
          }

          dap.adapters.python = {
            type = "executable",
            command = "/opt/homebrew/bin/python3",
            args = {
              "-m",
              "debugpy.adapter",
            },
          }

          dap.configurations.python = {
            {
              type = "python",
              request = "launch",
              name = "Launch file",
              program = "${file}", -- This configuration will launch the current file if used.
            },
          }
        end,
      },
    },
    event = "BufRead",
  },
}
