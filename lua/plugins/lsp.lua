return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
		vim.keymap.set("n", "<space>mm", ":Mason<CR>")
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "rust_analyzer", "clangd", },
				automatic_installation = true,
			})
		end,
	},
	{

		"neovim/nvim-lspconfig",
		config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()


			-- Setup language servers.
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities,})
			lspconfig.pyright.setup({ capabilities = capabilities,})
			lspconfig.clangd.setup({ capabilities = capabilities,})
			lspconfig.rust_analyzer.setup({ capabilities = capabilities,})

			-- Global mappings.
			-- See `:help vim.diagnostic.*` for documentation on any of the below functions
			vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
			vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, {})
			vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
		end,
	},
}
