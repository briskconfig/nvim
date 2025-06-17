-- [ Configure ]
vim.keymap.set("n", "<leader>b", ":execute 'tabfind ' .. '" .. Cfgdir .. "/legacy/brackets.vim'<CR>") -- Open the nvim brackets config
vim.keymap.set("n", "<leader>i", ":execute 'tabfind ' .. '" .. Cfgdir .. "'<CR>") -- Open the nvim configuration directory in Netrw
vim.keymap.set("n", "<leader>k", ":execute 'tabfind ' .. '" .. Cfgdir .. "keymap.lua'<CR>") -- Open the nvim keymap config
vim.keymap.set("n", "<leader>r", ':lua dofile(Cfgdir .. "keymap.lua")<CR>') -- Reload keymaps

-- [ General ]
vim.keymap.set({ "i", "v" }, "kj", "<Esc>") -- Say 'no' to vim-pinkey
vim.keymap.set("n", "D", "mhgg$vT:x:r!date -u +\\%s<CR>kJ:w<CR>`h") -- Unix timestamp the file
vim.keymap.set("n", "<leader>q", ":qa!<CR>") -- Quit neovim without saving docs
vim.keymap.set("n", "<C-s>", ":w<CR>") -- Save the current buffer
vim.keymap.set("n", "<M-x>", ":q<CR>") -- Quit the current buffer
vim.keymap.set("n", "<M-p>", ":set list!<CR>") -- Toggle :list symbols

-- [ Rearange Tabs ]
vim.keymap.set("n", "<C-Left>", ":-tabmove<CR>") -- Move this tab left
vim.keymap.set("n", "<C-Right>", ":+tabmove<CR>") -- Move this tab right

-- [ Shebang! ]
vim.keymap.set("n", "3b", "mhggO#!/usr/bin/env bash<Esc>`h")
vim.keymap.set("n", "3r", "mhggO#!/usr/bin/env ruby<Esc>`h")

-- [ Harpoon ]
vim.keymap.set("n", "hq", ":lua require('harpoon.ui').toggle_quick_menu()")

print("Keymaps Loaded")
