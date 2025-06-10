return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "gopls",
      "ts_ls",
    },
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      inlay_hints = {
        enabled = false,
      },
    }
  },
}
