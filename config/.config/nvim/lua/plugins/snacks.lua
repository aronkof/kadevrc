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
      { "<C-e>", function() Snacks.explorer.open({ follow_file = false }) end, desc = "Toggle file explorer" },
      { "<leader>e", function() Snacks.explorer.reveal() end, desc = "Reveal current file in explorer" },
      { "<leader><Space>", false},
      { "<leader>uz", false},
    },
  },
}
