-- Shorten Keymaps
local keymap = vim.keymap
local set    = vim.opt

-- [[ Bash ]]
keymap.set('i', 'func', "function (<C-o>mn) {<CR><Space><C-o>mf<CR>}<C-o>`n")
