return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				defaults = {
					initial_mode = "normal",
					prompt_prefix = "  ",
					selection_caret = "  ",
					theme = "dropdown",
					border = {},
					borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
					color_devicons = true,
					sorting_strategy = "ascending",
					layout_strategy = "vertical",
					layout_config = {
						vertical = {
							prompt_position = "top",
							preview_height = 0.3,
							height = 0.9,
							width = 0.45,
						},
					},
				},
				pickers = {
					find_files = {
						theme = "dropdown",
						border = {},
						borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
						color_devicons = true,
						layout_strategy = "vertical",
						layout_config = {
							prompt_position = "top",
							preview_height = 0.3,
							height = 0.9,
							width = 0.45,
						},
					},
					buffers = {
						theme = "dropdown",
						border = {},
						borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
						color_devicons = true,
						layout_strategy = "vertical",
						layout_config = {
							prompt_position = "top",
							preview_height = 0.3,
							height = 0.9,
							width = 0.45,
						},
					},
					oldfiles = {
						theme = "dropdown",
						border = {},
						borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
						color_devicons = true,
						layout_strategy = "vertical",
						layout_config = {
							prompt_position = "top",
							preview_height = 0.3,
							height = 0.9,
							width = 0.45,
						},
					},
					live_grep = {
						theme = "dropdown",
						border = {},
						borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
						color_devicons = true,
						layout_strategy = "vertical",
						layout_config = {
							prompt_position = "top",
							preview_height = 0.3,
							height = 0.9,
							width = 0.55,
						},
					},
					help_tags = {
						theme = "dropdown",
						border = {},
						borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
						color_devicons = true,
						layout_strategy = "vertical",
						layout_config = {
							prompt_position = "top",
							preview_height = 0.3,
							height = 0.9,
							width = 0.55,
						},
					},
				},
			})

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>s", builtin.find_files, {})
			vim.keymap.set("n", "<leader>o", builtin.oldfiles, {})
			vim.keymap.set("n", "<leader>/", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>b", builtin.buffers, {})
			vim.keymap.set("n", "<leader>h", builtin.help_tags, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
