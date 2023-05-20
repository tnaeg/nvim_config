return {
	cmd = "ColorizerToggle",
	"norcalli/nvim-colorizer.lua",
	event = "VeryLazy",
	keys = {
		{ "<leader>ct", "<cmd>ColorizerToggle<cr>", desc = "Toggle color highlighter" },
	},
	config = function()
		require("colorizer")
	end,
}
