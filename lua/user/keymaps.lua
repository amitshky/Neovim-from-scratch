local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-Left>", "<C-w>h", opts)
keymap("n", "<C-Down>", "<C-w>j", opts)
keymap("n", "<C-Up>", "<C-w>k", opts)
keymap("n", "<C-Right>", "<C-w>l", opts)

-- Resize with arrows
--keymap("n", "<C-Up>", ":resize -2<CR>", opts)
--keymap("n", "<C-Down>", ":resize +2<CR>", opts)
--keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
--keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-Right>", ":bnext<CR>", opts)
keymap("n", "<S-Left>", ":bprevious<CR>", opts)

keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
--keymap("n", "<A-Down>", "<Esc>:m .+1<CR>==gi", opts)
--keymap("n", "<A-Up>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to exit insert mode 
--keymap("i", "jk", "<ESC>", opts)
--keymap("i", "kj", "<ESC>", opts)
keymap('i', '<C-H>', '<C-W>', {noremap = true}) -- for Ctrl+Backspace

-- Visual --
-- Stay in indent mode
keymap("v", "<Tab>", ">gv", opts)
keymap("v", "<S-Tab>", "<gv", opts)

-- Move text up and down
--keymap("v", "<A-Down>", ":m .+1<CR>==", opts)
--keymap("v", "<A-Up>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)
keymap("v", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("v", "<A-Up>", ":move '<-2<CR>gv-gv", opts)

keymap("v", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("v", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Visual Block --
-- Move text up and down
--keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
--keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
--keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
--keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

