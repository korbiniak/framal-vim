local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Remap space as leader key
keymap("n", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- NERDTree keybindings
-- keymap("n", "<C-n>", ":NERDTree<CR>", opts)
-- keymap("n", "<C-t>", ":NERDTreeToggle<CR>", opts)

-- NvimTree keybindings
keymap("n", "<space>t", ":NvimTreeToggle<CR>", opts)

-- Resizing windows (like i3)
keymap("n", "<C-S-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-S-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-S-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-S-Right>", ":vertical resize +2<CR>", opts)

-- Moving between buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)

-- Visual mode --
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Telescope
-- keymap("n", "<leader>f", "<cmd>lua require 'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({previewer = false}))<CR>", opts)
keymap("n", "<leader>f", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>g", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>m", "<cmd>Telescope media_files<CR>", opts)
keymap("n", "<leader>r", "<cmd>Telescope lsp_references<CR>", opts)
keymap("n", "<leader>h", "<cmd>Telescope oldfiles<CR>", opts)

-- Session Manager
keymap("n", "<leader>sl", "<cmd>SessionManager load_last_session<CR>", opts)
keymap("n", "<leader>ss", "<cmd>SessionManager save_current_session<CR>", opts)
keymap("n", "<leader>so", "<cmd>SessionManager load_session<CR>", opts)

-- Bbye
keymap("n", "<leader>q", "<cmd>Bdelete<CR>", opts)
