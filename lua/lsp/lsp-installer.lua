local status_ok, lsp_installer = pcall(require, "mason")
if not status_ok then
	vim.notify.notify("No LSP-installer found", vim.log.levels.INFO)
	return
end

local status_ok_lsp, lspconfig = pcall(require, "lspconfig")
if not status_ok_lsp then
	vim.notify.notify("No LSP-Config found", vim.log.levels.INFO)
	return
end

lsp_installer.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})
--vim.lsp.set_log_level("ERROR")

local localServers =
	{ "clangd", "pyright", "tsserver", "lua_ls", "cmake", "glsl", "html", "cssls", "tailwindcss", "jsonls", "dockerls", "angularls" }
for _, lsp in ipairs(localServers) do
	local opts = {
		on_attach = require("lsp.handlers").on_attach,
		capabilities = require("lsp.handlers").capabilities,
		init_options = {
			onlyAnalyzeProjectsWithOpenFiles = true,
			suggestFromUnimportedLibraries = false,
			closingLabels = true,
		},
	}
	if lsp == "clangd" then
		local clangd_opts = require("lsp.settings.clangd-lsp")
		opts = vim.tbl_deep_extend("force", clangd_opts, opts)
	end

	if lsp == "pyright" then
		local pyright_opts = require("lsp.settings.pyright-lsp")
		opts = vim.tbl_deep_extend("force", pyright_opts, opts)
	end

	if lsp == "luals_lua" then
		local luals_opts = require("lsp.settings.lua-lsp")
		opts = vim.tbl_deep_extend("force", luals_opts, opts)
	end

	if lsp == "glsl" then
		local glsl_opts = require("lsp.settings.glsl-lsp")
		opts = vim.tbl_deep_extend("force", glsl_opts, opts)
	end

	if lsp == "jsonls" then
		local json_opts = require("lsp.settings.json-lsp")
		opts = vim.tbl_deep_extend("force", json_opts, opts)
	end
	lspconfig[lsp].setup(opts)
end
