local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Normal mode window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--Resize window
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

--Shift buffer
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "<A-Down>", ":m .+1<CR>==", opts)
keymap("v", "<A-Up>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts) --Rewrites the paste to not be repleaced by what you overwrote

keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)

keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader><home>", ":Alpha<cr>", opts)

local telescope = pcall(require, "telescope.builtin")
if telescope then
	keymap("n", "<leader>ff", ":Telescope find_files<cr>", opts)
	keymap("n", "<leader>fg", ":Telescope live_grep<cr>", opts)
	keymap("n", "<leader>fb", ":Telescope buffers<cr>", opts)
	keymap("n", "<leader>fh", ":Telescope help_tags<cr>", opts)
	keymap("n", "<leader>fs", ":Telescope grep_string<cr>", opts)
	keymap("n", "<leader>fp", ":Telescope project<cr>", opts)
end

keymap("n", "<leader>pu", ":PackerUpdate<cr>", opts)

local lspsaga = pcall(require, "lspsaga")
if lspsaga then
	keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opts)
	vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")
	keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
	keymap("n", "gD", "<cmd>Lspsaga peek_definition<CR>", opts)
	keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>", opts)
	keymap("n", "<leader>gd", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
	keymap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
	keymap("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
	keymap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>", opts)
	keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
	keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
	keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
	keymap("n", "<leader>ci", "<cmd>Lspsaga incoming_calls<CR>", opts)
	keymap("n", "<leader>co", "<cmd>Lspsaga outgoing_calls<CR>", opts)
	keymap("n", "<leader>o", "<cmd>SymbolsOutline<cr>", opts)
	keymap("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
	keymap("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
	keymap("n", "<leader>K", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
	keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>", opts)
	keymap("n", "gk", "<cmd> lua vim.buf.hover()<cr>", opts)
	keymap("n", "<leader>f", "<cmd> vim.lsp.buf.format()<cr>", opts)
	keymap("n", "<leader>gR", "<cmd> vim.lsp.buf.type_definition()<CR>", opts)
end

keymap("n", "<leader>tn", "<cmd>lua _NODE_TOGGLE()<cr>", opts)
keymap("n", "<leader>tn", "<cmd>lua _HTOP_TOGGLE()<cr>", opts)
keymap("n", "<leader>tn", "<cmd>lua _PYTHON_TOGGLE()<cr>", opts)
keymap("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr><cr>", opts)

keymap("n", "<leader>rp", "<cmd>lua require('rest-nvim').run()<cr>", opts)
