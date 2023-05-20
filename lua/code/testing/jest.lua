return {
	"mattkubej/jest.nvim",
	event = "VeryLazy",
	ft = "typescript",
	cmd = { "Jest", "JestFile", "JestSingle", "JestCoverage" },
	config = function()
		require("nvim-jest").setup()
	end,
}
