return {
	"telescope.nvim",
	dependencies = {
		{
			"nvim-telescope/telescope-media-files.nvim",
			dependencies = {
				"nvim-lua/popup.nvim",
				"nvim-lua/plenary.nvim",
				"nvim-telescope/telescope.nvim",
			},
			event = "VeryLazy",
			config = function()
				require("telescope").load_extension("media_files")
				require("telescope").extensions = {
					media_files = {
						filetypes = { "png", "webp", "jpg", "jpeg" },
						find_cmd = "rg",
					},
				}
			end,
		},
	},
}
