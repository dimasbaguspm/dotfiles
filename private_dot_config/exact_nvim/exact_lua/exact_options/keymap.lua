-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Move to window using the <C-hjkl> keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switch to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switch to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switch to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switch to right window" })
vim.keymap.set("n", "<C-q>", "<C-w>q", { desc = "Close current window" })

-- Split window
vim.keymap.set("n", "|", vim.cmd.vsplit, { desc = "Split window vertically" })
vim.keymap.set("n", "-", vim.cmd.split, { desc = "Split window horizontally" })

-- Quickie list
vim.keymap.set("n", "[q", vim.cmd.cprev, { desc = "Previous quickfix item" })
vim.keymap.set("n", "]q", vim.cmd.cnext, { desc = "Next quickfix item" })

-- Diagnostics
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to prev diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
