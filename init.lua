--Remember order matters, a wierd error such as index a boolean 
--Depends on an error in the order

if vim.fn.filereadable("/usr/bin/clangd") > 0 then
 vim.notify("BLA")
 else
   vim.notify("NOO")
end
require "user.options"
require "user.keymap"
require "plugins.plugins"
require "user.colorscheme"
require "user.cmp"
require "lsp"

