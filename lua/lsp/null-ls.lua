local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions
local hover = null_ls.builtins.hover
local completion = null_ls.completion

local sources = {
	--[[ 		formatting.clang_format.with({
			filetypes = { "cpp", "c", "h", "hpp" },
		}), ]]
	null_ls.builtins.formatting.prettier.with({
		filetypes = { "ts", "js", "jsx", "typescript", "javascript" },
		extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
	}),
	formatting.stylua.with({
		filetypes = { "lua" },
	}),

	--code_actions.gitsigns,
	--
	--
	--[[ 		hover.dictionary,
		diagnostics.clang_check.with({
			filetypes = { "cpp", "c", "h", "hpp" },
			extra_args = { "-system-headers", "-checks=*", "--format-style=file" },
		}), ]]
}

on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
        vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
end


null_ls.setup({
  on_attach = on_attach,
  sources = sources
})
