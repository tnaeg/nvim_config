return {
	{
		"rest-nvim/rest.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{ "<leader>op", "<Plug>RestNvim<cr>", "Run request under cursor" },
			{ "<leader>or", "<Plug>RestNvimPreview<cr>", "Preview CURL command" },
			{ "<leader>oi", "<Plug>RestNvimLast<cr>", "Re-run request" },
		},
		opts = {
			result_split_horizontal = false,
			result_split_in_place = false,
		},
		config = function(opts)
			require("rest-nvim").setup(opts)
		end,
	},
}
