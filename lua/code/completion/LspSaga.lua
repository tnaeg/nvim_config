return {
	"kkharji/lspsaga.nvim",
	event = "VeryLazy",
	config = function()
		require("lspsaga").setup()
	end,
}
