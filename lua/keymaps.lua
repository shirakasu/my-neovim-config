local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Better Cursor navigation
keymap("n",  "<S-j>",  "10j",  opts)
keymap("n",  "<S-k>",  "10k",  opts)
keymap("n",  "<S-l>",  "$",  opts)
keymap("n",  "<S-h>",  "^",  opts)

-- Add Empty Line in NORMAL Mode
keymap("n",  "o",  "o<ESC>",  opts)

-- Yunk Line with "Y"
keymap("n", "Y", "y$", opts)

-- New tab (exist file)
keymap("n", "te", ":tabedit", opts)

-- New tab (new file)
keymap("n", "tn", ":tabnew<Return>", opts)

-- move tab
keymap("n", "gh", "gT", opts)
keymap("n", "gl", "gt", opts)

-- Split window
keymap("n", "ss", ":split<Return><C-w>w", opts)
keymap("n", "sv", ":vsplit<Return><C-w>w", opts)

-- Select all
keymap("n", "<C-a>", "gg<S-v>G", opts)

-- Do not yank with x
keymap("n", "x", '"_x', opts)

-- Delete a word backwards
keymap("n", "dw", 'vb"_d', opts)

-- Force Exit with <Space>q 
keymap("n", "<Space>q", ":<C-u>q!<Return>", opts)

-- FineCmdLine Start
keymap("n", ":", "<cmd>FineCmdline<CR>", opts)

-- Hilite Stop ESC*2 
keymap("n", "<Esc><Esc>", ":<C-u>set nohlsearch<Return>", opts)

-- Open Terminal
keymap("n", "tm", "<cmd>ToggleTerm<CR>", opts)

-- Insert --
-- Press jj fast to exit insert mode
keymap("i", "jj", "<ESC>", opts)

-- Auto Space after ","
keymap("i", ",", ",<Space>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Select end to line with "v"
keymap("v", "v", "$h", opts)
