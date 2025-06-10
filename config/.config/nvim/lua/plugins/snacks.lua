return {
  {
    "folke/snacks.nvim",
    opts = {
      indent = { enabled = false },
    },
    config = function()
      Snacks.toggle.inlay_hints():map("|")
    end,
    keys = {
      { "<C-e>", function() Snacks.explorer() end, desc = "Toggle file explorer" },
      { "<leader><leader>", false},
      { "<leader>uz", false},
    },
  },
}
