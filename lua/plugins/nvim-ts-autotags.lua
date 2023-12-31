return {
	"windwp/nvim-ts-autotag",
	autotag = {
		enable = true,
		enable_rename = true,
		enable_close = true,
		enable_close_on_slash = true,
	},
	ft = {
		"html",
		"javascript",
		"typescript",
		"javascriptreact",
		"typescriptreact",
	},
	config = function()
		require("nvim-ts-autotag").setup({})
	end,
}
