return {
	"craftzdog/solarized-osaka.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("solarized-osaka").setup({
			transparent = false,
			terminal_colors = true,
			styles = {
				comments = { italic = false },
				keywords = { italic = false },
				sidebars = "normal",
				floats = "normal",
			},
		})
		vim.cmd.colorscheme("solarized-osaka")
	end,
}
