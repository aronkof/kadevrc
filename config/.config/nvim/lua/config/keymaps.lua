vim.keymap.set("n", "<Bslash>", ":setlocal relativenumber!<CR>", { silent = true })

-- avoid unwanted copying
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

-- custom movement
vim.keymap.set("n", "-", "zz", { silent = true })
vim.keymap.set("n", "{", "{k", { silent = true })
vim.keymap.set("n", "}", "}j", { silent = true })
vim.keymap.set("v", "$", "g_", { silent = true })

-- window movement
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", { silent = true })

-- avoid tmux line move issue
vim.keymap.del("n", "<M-j>")
vim.keymap.del("n", "<M-k>")
