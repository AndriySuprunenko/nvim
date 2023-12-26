return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"jayp0521/mason-null-ls.nvim",
		},
		config = function()
			require("mason").setup()
			-- require("mason-null-ls").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"cssls",
					"angularls",
					"csharp_ls",
					"emmet_ls",
					"html",
					"jsonls",
					"jdtls",
					"pyright",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.tsserver.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.angularls.setup({})
			lspconfig.cssls.setup({})
			lspconfig.csharp_ls.setup({})
			lspconfig.emmet_ls.setup({})
			lspconfig.html.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.jdtls.setup({})
			lspconfig.pyright.setup({})

			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
