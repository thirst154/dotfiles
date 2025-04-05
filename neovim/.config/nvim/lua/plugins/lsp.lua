return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},

		config = function()
			--import mason
			local mason = require("mason")

			-- import mason-lspconfig
			local mason_lspconfig = require("mason-lspconfig")

			local mason_tool_installer = require("mason-tool-installer")

			mason.setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})

			mason_lspconfig.setup({
				-- list of servers for mason to install
				ensure_installed = {
					"html",
					"cssls",
					"tailwindcss",
					"lua_ls",
					"pyright",
					-- "matlab_ls",
					"bashls",
					"marksman",
					--"ltex",
					--"r_language_server",
					"clangd",
				},

				automatic_instaallation = true,
			})

			mason_tool_installer.setup({
				ensure_installed = {
					"prettier",
					"stylua",
					"isort", -- python
					"black", -- python
					"clang-format",
				},
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/nvim-cmp",
			{ "antosha417/nvim-lsp-file-operations", config = true },
		},
		config = function()
			local cmp_nvim_lsp = require("cmp_nvim_lsp")
			local capabilities = vim.tbl_deep_extend(
				"force",
				{},
				vim.lsp.protocol.make_client_capabilities(),
				cmp_nvim_lsp.default_capabilities()
			)

			local lspconfig = require("lspconfig")

			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})
			lspconfig.ruby_lsp.setup({
				capabilities = capabilities,
				cmd = { "/home/typecraft/.asdf/shims/ruby-lsp" },
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
		end,
	},
}
