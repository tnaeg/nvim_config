HOME = os.getenv("HOME")

local options = {
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 2,
  completeopt = { "menuone", "noselect" },
  conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  mouse = "a",
  pumheight = 10,
  showmode = true,
  showtabline = 2,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  timeout = true,
  timeoutlen = 500,
  undofile = true,
  updatetime = 500,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  softtabstop= 2,
  cursorline = true,
  number = true,
  numberwidth = 4,
  signcolumn  = "yes",
  wrap = false,
  scrolloff = 8,
  sidescrolloff = 4,
  guifont = "monospace:h17",
  incsearch= true,
  errorbells = false,
  undodir = HOME .. "/.config/nvim/undodir",
  list = true,
  listchars = {trail = '>', tab = '▸ '},
  termguicolors = true,
  relativenumber = true,
  colorcolumn = "80"

}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.shortmess:append "c"
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[ set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]]

