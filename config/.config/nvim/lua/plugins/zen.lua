local cfg = { window = { width = .8 } }

return
{
  {
    "folke/zen-mode.nvim",
    opts = {},
    keys = {
      { "<leader><leader>", function() require("zen-mode").toggle(cfg) end, desc = "Toggle file explorer" },
    },
  },
}
