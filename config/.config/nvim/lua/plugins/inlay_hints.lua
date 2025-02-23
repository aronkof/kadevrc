return {
  {
    "folke/snacks.nvim",
    opts = {},
    config = function()
      Snacks.toggle.inlay_hints():map("|")
    end,
  },
}

