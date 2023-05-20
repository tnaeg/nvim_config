return {
	"jackMort/ChatGPT.nvim",
	event = "VeryLazy",
	opts = {
		api_key_cmd = "gpg --decrypt ~/.gpt.gpg 2>/dev/null",
	},
	config = function(opts)
		require("chatgpt").setup(opts)
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
}
