return {
  "luckasRanarison/tailwind-tools.nvim",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true,
			ensure_installed = { "lua", "javascript", "go" },
			highlight = { enable = true },
			indent = { enable = true },
		})

		local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

		parser_config.blade = {
			install_info = {
				url = "https:/github.com/EmranMR/tree-sitter-blade",
				files = { "src/parser.c" },
				branch = "main",
			},
			filetype = "blade",
		}

		vim.filetype.add({
			pattern = {
				[".*%.blade%.php"] = "blade",
			},
		})
	end,
}
