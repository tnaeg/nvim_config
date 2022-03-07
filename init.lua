--Depends on an error in the order
require("user.options")
require("plugins.plugins")

require("user.notify") --Handles error messages
require("user.colorscheme") -- OneDark -> Darker
require("user.ntree") --File explorer tree
require("user.bufferline") --Top line to track open buffers
require("user.lualine") -- Bottom highlight line.
require("user.gitsigns") -- Git interaction

require("user.telescope") --Fuzzy Finder
require("user.project") --Project handler for telescope
require("user.alpha") -- Dashboard
require("user.toggleterm") --Floating terminal window
require("lsp")
require("user.cmp")
require("user.colorhighlight")
--[[ --TreeSitter dependant: ]]
require("treesitter")
require("user.indentline")
require("user.autopairs")
require("user.comment")
require("user.glow")
--
require("user.whichkey")

require("web.rest")

require("user.keymap")
