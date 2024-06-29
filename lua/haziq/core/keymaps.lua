-- Setup Leader Key (Default use spacebar as Leader Key)
vim.g.mapleader = " "

local keymap = vim.keymap -- for more conciseness

keymap.set("i", "jk", "<ESC>", { desc =  "Exit insert mode with 'jk' from keyboard"})

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights"})

--keymap.set('n', '<leader>e', vim.cmd.Ex, { desc = "Create shortcut to go to Explore tab"})

-- Increment & Decrement of numbers for ease of assigned int variables to be scaled
keymap.set('n', '<leader>+', "<C-a>", { desc = "Increment Number"})
keymap.set('n', '<leader>-', "<C-x>", { desc = "Decrement Number"})

-- Window Management
keymap.set('n', '<leader>sv', "<C-w>v", { desc = "Split windows vertically"})
keymap.set('n', '<leader>sh', "<C-w>s", { desc = "Split windows horizontally"})
keymap.set('n', '<leader>se', "<C-w>=", { desc = "Slit windows to equal size"})
keymap.set('n', '<leader>sx', "<cmd>close<CR>", { desc = "Close split windows"}) -- Close current split windows that just recently opened

-- Tabs Management
keymap.set('n', '<leader>to', "<cmd>tabnew<CR>", { desc = "Open New Tab"})
keymap.set('n', '<leader>tx', "<cmd>tabclose<CR>", { desc = "Close Current Tab"})
keymap.set('n', '<leader>tn', "<cmd>tabn<CR>", { desc = "Go to next tab"})
keymap.set('n', '<leader>tp', "<cmd>tabp<CR>", { desc = "Go to previous tab"})
keymap.set('n', '<leader>tf', "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab"}) -- Open current file in a new tab 
