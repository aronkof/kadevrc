vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("Q", "q", {})
vim.api.nvim_create_user_command("Wq", "wq", {})
vim.api.nvim_create_user_command("WQ", "wq", {})
vim.api.nvim_create_user_command("Qa", "qa", {})
vim.api.nvim_create_user_command("QA", "qa", {})

vim.api.nvim_create_user_command("Vimcfg", "edit ~/.config/nvim/init.lua", {})
vim.api.nvim_create_user_command("Rvim", "source ~/.config/nvim/init.lua", {})

vim.cmd("syntax on")
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.cmd("filetype plugin on")
vim.opt.compatible = false
vim.opt.encoding = "utf-8"
vim.opt.wrap = false
vim.opt.formatoptions:remove("t")
vim.opt.errorbells = false
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 2
vim.opt.hlsearch = false
vim.opt.splitbelow = true
vim.opt.relativenumber = true

vim.opt.foldenable = false
vim.opt.foldmethod = "manual"

vim.opt.laststatus = 2
vim.opt.cursorline = true
vim.opt.guicursor = ""
vim.opt.fillchars = "fold: ,vert:│,eob: ,msgsep:‾"
vim.opt.clipboard = "unnamedplus"

vim.opt.textwidth = 120
vim.opt.formatoptions:remove("t")
vim.opt.shellcmdflag = "-c"

-- Go settings
vim.g.go_textobj_enabled = 0

vim.opt.listchars = {
  tab = "  ",
  trail = " ",
  nbsp = "+",
}
