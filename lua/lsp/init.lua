local status_ok, lspconfig = pcall(require, "lspconfig")

if not status_ok then
	return
end

require("lsp.lsp-installer")
require("lsp.lsp-notify")
require("lsp.lsp-saga")
require("lsp.handlers").setup()
--[[ require("lsp.null-ls") ]]
require("lsp.trouble")
require("lsp.dap")
require("lsp.symbol_outline")
