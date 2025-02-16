-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- {'catppuccin/nvim', opts = {}},
    -- {'itchyny/lightline.vim', opts = {}},
      
    {'folke/noice.nvim', opts = {}},
    {'MunifTanjim/nui.nvim', opts = {}},
    {'rcarriga/nvim-notify', opts = {}},
    
    -- {'tpope/vim-fugitive', opts = {}},
    -- {'tpope/vim-surround', opts = {}},
    -- {'tpope/vim-commentary', opts = {}},
      
    {'neovim/nvim-lspconfig', opts = {}},
    {'hrsh7th/cmp-nvim-lsp', opts = {}},
    {'hrsh7th/cmp-buffer', opts = {}},
    {'hrsh7th/cmp-path', opts = {}},
    {'hrsh7th/cmp-cmdline', opts = {}},
    {'hrsh7th/nvim-cmp', opts = {}},
    {'L3MON4D3/LuaSnip', opts = {}},
    {'saadparwaiz1/cmp_luasnip', opts = {}},
    {'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim', opts = {}},
    {'williamboman/nvim-lsp-installer', opts = {}},
    -- {'fatih/vim-go', opts = {}},
    -- {'preservim/nerdtree', opts = {}},
    {'nvim-lua/plenary.nvim', opts = {}},
    {'ThePrimeagen/harpoon', opts = {}},
    {'nvim-telescope/telescope.nvim', opts = {}},
    {'nvim-treesitter/nvim-treesitter', opts = {}},
    {'epwalsh/obsidian.nvim', opts = {}}
  },
  install = { colorscheme = { "catppuccin" } },
  checker = { enabled = true },
})
