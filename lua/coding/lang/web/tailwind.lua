return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				tailwindcss = {
					filetypes_exclude = { "markdown" },
					filetypes_include = {},
				},
			},
		},
		setup = {
			tailwindcss = function(_, opts)
				local tw = require("lspconfig.server_configurations.tailwindcss")
				opts.filetypes = opts.filetypes or {}
				vim.list_extend(opts.filetypes, tw.default_config.filetypes)

				opts.filetypes = vim.tbl_filter(function(ft)
					return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
				end, opts.filetypes)
				vim.list_extend(opts.filetypes, opts.filetypes_include or {})
			end,
		},
	},
	{
		cmd = "ColorizerToggle",
		"norcalli/nvim-colorizer.lua",
		event = "VeryLazy",
		keys = {
			{ "<leader>ct", "<cmd>ColorizerToggle<cr>", desc = "Toggle color highlighter" },
		},
		config = function()
			require("colorizer")
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			{ "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
		},
		opts = function(_, opts)
			-- original LazyVim kind icon formatter
			local format_kinds = opts.formatting.format
			opts.formatting.format = function(entry, item)
				format_kinds(entry, item) -- add icons
				return require("tailwindcss-colorizer-cmp").formatter(entry, item)
			end
		end,
	},
}
