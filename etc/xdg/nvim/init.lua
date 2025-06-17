--[[
  =====================================================================
  =====================================================================
  =====================================================================
  ========                                    .-----.          ========
  ========         .----------------------.   | === |          ========
  ========         |.-""""""""""""""""""-.|   |-----|          ========
  ========         ||                    ||   | === |          ========
  ========         ||   KICKSTART.NVIM   ||   |-----|          ========
  ========         ||                    ||   | === |          ========
  ========         ||                    ||   |-----|          ========
  ========         ||:Tutor              ||   |:::::|          ========
  ========         |'-..................-'|   |____o|          ========
  ========         `"")----------------(""`   ___________      ========
  ========        /::::::::::|  |::::::::::\  \ no mouse \     ========
  ========       /:::========|  |==hjkl==:::\  \ required \    ========
  ========      '""""""""""""'  '""""""""""""'  '""""""""""'   ========
  ========                                                     ========
  =====================================================================
  =====================================================================

  I hope you enjoy your Neovim journey,
  - TJ
--]]

-- [ Global Config Variables ]
Xdg = os.getenv("XDG_CONFIG_HOME") or os.getenv("HOME") .. ".config"
Cfgdir = Xdg .. "/nvim/"

-- [[ Setting options ]]
vim.g.mapleader = " " --  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true
vim.o.number = true -- Make line numbers default
vim.o.mouse = "a" -- Enable mouse mode, can be useful for resizing splits for example!
vim.o.showmode = false -- Don't show the mode, since it's already in the status line
vim.o.colorcolumn = "79,99"
vim.o.expandtab = true
vim.o.foldmethod = "indent"
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.tabstop = 2
vim.o.breakindent = true -- Enable break indent
vim.o.undofile = true -- Save undo history
vim.o.undodir = os.getenv("HOME") .. "/.local/state/nvim/undo"
vim.o.directory = os.getenv("HOME") .. "/.local/state/nvim/swap"
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = "yes" -- Keep signcolumn on by default
vim.o.inccommand = "split" -- Preview substitutions live, as you type!
vim.o.cursorline = true -- Show which line your cursor is on
vim.o.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.
vim.o.confirm = true

vim.o.updatetime = 250 -- Decrease update time
vim.o.timeoutlen = 300 -- Decrease mapped sequence wait time

vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end) -- Sync clipboard between OS and Neovim.

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- [[ Basic Keymaps ]]
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") -- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" }) -- Diagnostic keymaps

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

-- [ Plugins ]
dofile(Cfgdir .. "plugins.lua") -- Initializes lazy.vim and loads plugin configurations

-- [ Brackets ]
vim.cmd("source " .. Cfgdir .. "legacy/brackets.vim")

-- [ Color ]
if os.getenv("HOME") == "/root" then
	vim.cmd("source " .. Cfgdir .. "legacy/color/Amythest.vim")
else
	vim.cmd("source " .. Cfgdir .. "legacy/color/Emerald.vim")
end

-- [ Keymap ] ( after plugins to update correctly )
dofile(Cfgdir .. "keymap.lua")

-- [ Netrw (vim file-explorer) ]
vim.cmd("source " .. Cfgdir .. "legacy/netrw.vim")

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
