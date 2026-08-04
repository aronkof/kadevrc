return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      "gopls",
      "ts_ls",
      "rust_analyzer",
      "pyright",
      "basedpyright",
      "ruff",
      "ruff_lsp",
    },
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      inlay_hints = {
        enabled = false,
      },
      servers = {
        bacon_ls = {
          enabled = diagnostics == "bacon-ls",
        },
        gopls = {
          settings = {
            gopls = {
              analyses = {
                ST1003 = false,
              },
            },
          },
        },
        rust_analyzer = { enabled = false },
      },
    }
  },
  {
    "Saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    opts = {
      completion = {
        crates = {
          enabled = true,
        },
      },
      lsp = {
        enabled = true,
        actions = true,
        completion = true,
        hover = true,
      },
    },
  },
}
