require("config.lazy")

vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("Q", "q", {})
vim.api.nvim_create_user_command("Wq", "wq", {})
vim.api.nvim_create_user_command("WQ", "wq", {})
vim.api.nvim_create_user_command("Qa", "qa", {})
vim.api.nvim_create_user_command("QA", "qa", {})

vim.api.nvim_create_user_command("Vimcfg", "edit ~/.config/nvim/init.vim", {})
vim.api.nvim_create_user_command("Rvim", "source ~/.config/nvim/init.vim", {})

-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Basic key mappings
vim.keymap.set("i", "<M-j>", "<esc>", { silent = true })
vim.keymap.set("v", "<M-j>", "<esc>", { silent = true })

vim.keymap.set("n", "<M-s>", "<Nop>", { silent = true })
vim.keymap.set("n", "-", "zz", { silent = true })
vim.keymap.set("n", "<leader><leader>", "zz", { silent = true })
vim.keymap.set("n", "{", "{k", { silent = true })
vim.keymap.set("n", "}", "}j", { silent = true })
vim.keymap.set("n", "<M-[>", "[{", { silent = true })
vim.keymap.set("n", "<M-]>", "]}", { silent = true })
vim.keymap.set("n", "<C-[>", "za", { silent = true })
vim.keymap.set("n", "<C-]>", "zo", { silent = true })

vim.keymap.set("v", "<M-s>", "<esc>", { silent = true })
vim.keymap.set("v", "$", "g_", { silent = true })

vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", { silent = true })

-- Surround remap
vim.keymap.set("n", "S", "ys", { silent = true })

-- NERDTree mappings and settings
vim.keymap.set("n", "<C-e>", ":NERDTreeToggle<CR>", { silent = true })
vim.keymap.set("n", "<M-e>", ":NERDTreeFind<CR>", { silent = true })
vim.api.nvim_create_autocmd("FileType", {
  pattern = "nerdtree",
  callback = function()
    vim.keymap.set("n", "e", "<Nop>", { buffer = true, silent = true })
    vim.keymap.set("n", "<M-e>", "<Nop>", { buffer = true, silent = true })
    vim.keymap.set("n", "<leader>ff", ":wincmd l<CR>", { buffer = true, silent = true })
    vim.keymap.set("n", "<leader><leader>", ":wincmd l<CR>", { buffer = true, silent = true })
  end,
})
vim.g.NERDTreeWinSize = 40

-- Common settings
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

-- Folding
vim.opt.foldenable = false
vim.opt.foldmethod = "manual"
vim.keymap.set("n", "<esc>", "<Nop>", { silent = true })

-- Theme and lightline configuration
vim.cmd("colorscheme catppuccin")
vim.g.lightline = {
  colorscheme = "catppuccin",
  active = {
    left = { { "mode" }, { "gitbranch", "filename" } },
    right = { { "lineinfo" }, { "filetype" } },
  },
  component_function = {
    gitbranch = "v:lua.LLgitbranch",
    mode = "v:lua.LLmode",
    filename = "v:lua.LLfilename",
    filetype = "v:lua.LLfiletype",
  },
  inactive = { right = {} },
}

-- Lightline component functions (exposed to Vim as Lua functions)
function _G.LLgitbranch()
  if vim.bo.filetype == "netrw" then
    return ""
  else
    return vim.fn.FugitiveHead()
  end
end

function _G.LLmode()
  if vim.bo.filetype == "netrw" then
    return ""
  else
    return vim.fn["lightline#mode"]()
  end
end

function _G.LLfilename()
  if vim.bo.filetype == "netrw" then
    return "netrw"
  else
    return vim.fn.expand("%:t")
  end
end

function _G.LLfiletype()
  if vim.bo.filetype == "netrw" then
    return ""
  else
    return vim.bo.filetype
  end
end

-- Toggle relative line numbering
vim.keymap.set("n", "<Bslash>", ":setlocal relativenumber!<CR>", { silent = true })

-- Additional UI settings
vim.opt.t_Co = 256
vim.opt.laststatus = 2
vim.opt.cursorline = true
vim.opt.guicursor = ""
vim.opt.fillchars = "fold: ,vert:│,eob: ,msgsep:‾"

-- Clipboard settings
vim.opt.clipboard = "unnamedplus"

-- Avoid messing with the clipboard: remap deletion and change commands
vim.keymap.set("n", "_d", "d", { silent = true })
vim.keymap.set("v", "_d", "d", { silent = true })
vim.keymap.set("n", "d", "\"xd", { silent = true })
vim.keymap.set("v", "d", "\"xd", { silent = true })
vim.keymap.set("n", "D", "\"xD", { silent = true })
vim.keymap.set("v", "D", "\"xD", { silent = true })
vim.keymap.set("n", "x", "\"xx", { silent = true })
vim.keymap.set("v", "x", "\"xx", { silent = true })
vim.keymap.set("n", "s", "\"xs", { silent = true })
vim.keymap.set("v", "s", "\"xs", { silent = true })
vim.keymap.set("n", "c", "\"xc", { silent = true })
vim.keymap.set("v", "c", "\"xc", { silent = true })
vim.keymap.set("n", "C", "\"xC", { silent = true })
vim.keymap.set("v", "C", "\"xC", { silent = true })

-- Moving lines
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { silent = true })

-- Go settings
vim.g.go_textobj_enabled = 0

-- gq settings
vim.opt.textwidth = 120
vim.opt.formatoptions:remove("t")

-- Shell command flag (to allow interactive shell sessions)
vim.opt.shellcmdflag = "-c"

-- Telescope mappings
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { silent = true })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { silent = true })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { silent = true })

-- Harpoon mappings
vim.keymap.set("n", "<leader>a", function() require("harpoon.mark").add_file() end, { silent = true })
vim.keymap.set("n", "<leader>o", function() require("harpoon.ui").toggle_quick_menu() end, { silent = true })
vim.keymap.set("n", "<leader>1", function() require("harpoon.ui").nav_file(1) end, { silent = true })
vim.keymap.set("n", "<leader>2", function() require("harpoon.ui").nav_file(2) end, { silent = true })
vim.keymap.set("n", "<leader>3", function() require("harpoon.ui").nav_file(3) end, { silent = true })
vim.keymap.set("n", "<leader>4", function() require("harpoon.ui").nav_file(4) end, { silent = true })
vim.keymap.set("n", "<leader>9", function() require("harpoon.ui").nav_file(3) end, { silent = true })
vim.keymap.set("n", "<leader>0", function() require("harpoon.ui").nav_file(4) end, { silent = true })

-- LSP diagnostics toggler mapping
vim.keymap.set("n", "<leader>tld", "<Plug>(toggle-lsp-diag)", { silent = true })
