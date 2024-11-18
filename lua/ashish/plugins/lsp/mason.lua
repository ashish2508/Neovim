return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })
    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
<<<<<<< HEAD
        "tsserver",
=======
<<<<<<< HEAD
        "tsserver",
=======
>>>>>>> 034704e (Initial commit)
>>>>>>> 7840375 (Initial commit with local changes)
        "html",
        "cssls",
        "tailwindcss",
        "svelte",
        "lua_ls",
        "graphql",
        "emmet_ls",
        "prismals",
        "pyright",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "stylua", -- lua formatter
        "isort",  -- python formatter
        "black",  -- python formatter
        "pylint",
        "eslint_d",
        "djlint",   --go
        "ast-grep", --c++
        "harper-ls",
      },
    })
  end,
}
