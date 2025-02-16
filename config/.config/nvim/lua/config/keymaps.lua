vim.keymap.set("n", "<Bslash>", ":setlocal relativenumber!<CR>", { silent = true })

vim.keymap.set("n", "_d", "d", { silent = true })
vim.keymap.set("v", "_d", "d", { silent = true })
vim.keymap.set("n", "d", '"xd', { silent = true })
vim.keymap.set("v", "d", '"xd', { silent = true })
vim.keymap.set("n", "D", '"xD', { silent = true })
vim.keymap.set("v", "D", '"xD', { silent = true })
vim.keymap.set("n", "x", '"xx', { silent = true })
vim.keymap.set("v", "x", '"xx', { silent = true })
vim.keymap.set("n", "s", '"xs', { silent = true })
vim.keymap.set("v", "s", '"xs', { silent = true })
vim.keymap.set("n", "c", '"xc', { silent = true })
vim.keymap.set("v", "c", '"xc', { silent = true })
vim.keymap.set("n", "C", '"xC', { silent = true })
vim.keymap.set("v", "C", '"xC', { silent = true })

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { silent = true })

-- custom movement
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

-- TODO: review which is the sorround mapping in lazyvim
vim.keymap.set("n", "S", "ys", { silent = true })

vim.keymap.set("n", "<esc>", "<Nop>", { silent = true })
