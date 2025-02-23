return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "gopls",
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
