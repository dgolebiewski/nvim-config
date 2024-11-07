return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "gopls", "ts_ls" },
        auto_install = true
			})
		end,
	},
  {
    "preservim/nerdcommenter"
  },
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
			lspconfig.gopls.setup({
        capabilities = capabilities
      })
			lspconfig.ts_ls.setup({
        capabilities = capabilities
      })
      lspconfig.intelephense.setup({
        capabilities = capabilities
      })
      lspconfig.cssls.setup({
        capabilities = capabilities
      })
      lspconfig.volar.setup({
        capabilities = capabilities
      })
      lspconfig.prettier.setup({
        capabilities = capabilities
      })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {})
			vim.keymap.set("n", "<leader>f", function()
				vim.lsp.buf.format({ async = true })
			end, {})
			--vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, {})
			vim.keymap.set("n", "rn", vim.lsp.buf.rename, {})
			vim.keymap.set({ "n", "v" }, "ca", vim.lsp.buf.code_action, {})
		end,
	},
}
