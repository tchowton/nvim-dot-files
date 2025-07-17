vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment numbder" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement numbder" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<RC>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<RC>", { desc = "Close new tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<RC>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<RC>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<RC>", { desc = "Open current buffer in new tab" })

-- Move a single line up
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
-- Move a single line down
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })

-- Move selected lines up (in visual mode)
vim.api.nvim_set_keymap('x', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
-- Move selected lines down (in visual mode)
vim.api.nvim_set_keymap('x', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
