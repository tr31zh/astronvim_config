-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        -- Lua
        "lua_ls",
        -- Python
        "pyright",
        -- Latex
        "texlab",
        -- Typescript
        "tsserver",
        -- HTML
        "html",
        -- Haskell
        "hls",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        -- Lua
        "stylua",
        -- Python
        "black",
        "pylint",
        -- Latex
        "texlab",
        "latexindent",
        "vale",
        -- Typescript
        "eslint_d",
        "prettier",
        -- Haskell
        "fourmolu",
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        -- Python
        "python",
        -- Typescript
        "firefox",
        "chrome",
        -- Haskell
        "haskell",
      })
    end,
  },
}
