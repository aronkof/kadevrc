return {pkgs={{dir="/Users/akoffler/.local/share/nvim/lazy/kulala.nvim",name="kulala.nvim",file="lazy.lua",spec=function()
return {
  "mistweaverco/kulala.nvim",
  ft = { "http", "rest" },
  opts = {},
}

end,source="lazy",},{dir="/Users/akoffler/.local/share/nvim/lazy/noice.nvim",name="noice.nvim",file="lazy.lua",spec=function()
return {
  -- nui.nvim can be lazy loaded
  { "MunifTanjim/nui.nvim", lazy = true },
  {
    "folke/noice.nvim",
  },
}

end,source="lazy",},{dir="/Users/akoffler/.local/share/nvim/lazy/plenary.nvim",name="plenary.nvim",file="community",spec={"nvim-lua/plenary.nvim",lazy=true,},source="lazy",},},version=12,}