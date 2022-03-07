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

null_ls.setup({
	debug = false,
	sources = {
--[[ 		formatting.clang_format.with({
			filetypes = { "cpp", "c", "h", "hpp" },
		}), ]]
		formatting.prettier.with({
			filetypes = { "ts", "js", "jsx" },
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
	},
})
