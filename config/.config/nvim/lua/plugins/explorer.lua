return {
  {
    "folke/snacks.nvim",
    opts = {
      indent = { enabled = false },
    },
    keys = {
      { "<C-e>", function() Snacks.explorer() end, desc = "File Explorer" },
    },
  },
}
