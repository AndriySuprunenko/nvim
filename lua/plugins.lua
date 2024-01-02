return {
	{ "christoomey/vim-tmux-navigator" },
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			--vim.opt.termguicolors = true
			require("bufferline").setup({
				options = {
					mode = "tabs",
					diagnostics_indicator = function(count, level)
						local icon = level:match("error") and " " or " "
						return " " .. icon .. count
					end,
					offsets = {
						{
							filetype = "NvimTree",
							text = "File Explorer",
							highlight = "Directory",
							separator = true,
						},
					},
				},
			})
		end,
	},
}
