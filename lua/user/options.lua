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
  timeoutlen = 500,
  undofile = true,
  updatetime = 500,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  cursorline = true,
  number = true,
  numberwidth = 4,
  signcolumn  = "yes",
  wrap = false,
  scrolloff = 2,
  sidescrolloff = 4,
  guifont = "monospace:h17",
  incsearch= true,
  errorbells = false,
  undodir = HOME .. "/.config/nvim/undodir",
  list = true,
  listchars = "trail:>",
  termguicolors = true,
}


vim.cmd [[
  set colorcolumn=80
  highlight ColorColumn ctermbg=0 guibg=lightgray
]]

local g = {
  netrw_banner = 0,
  netrw_browse_split = 3,
  netrw_browse_winsize = 15,
  netrw_liststyle = 3,
  netrw_altv = 1
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

for k, v in pairs(g) do
  vim.g[k] = v
end

vim.opt.shortmess:append "c"
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[ set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]]

