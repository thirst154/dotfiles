return {
	-- UI tweaks
	-- lazy.nvim
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	},

	-- lua line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },

		config = function()
			require("lualine").setup()
		end,
	},

	--file explorer
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},

		config = function()
			require("nvim-tree").setup({
				-- disable_netrw = true,
				-- hijack_netrw = true,
				-- open_on_setup = false,
				-- ignore_ft_on_setup = {},
				-- auto_close = false,
				-- open_on_tab = false,
				-- update_to_buf_dir = {
				-- 	enable = true,
				-- 	auto_open = true,
				-- },
				view = {
					width = 30,
					side = "right",
				},
			})

			local key = vim.keymap.set -- create a shortcut for nvim-tree

			key("n", "<leader>fe", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
			key("n", "<leader>ft", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
		end,
	},

	-- topbar
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			animation = true,
			insert_at_start = true,
			-- …etc.
		},
		version = "^1.0.0", -- optional: only update when a new 1.x version is released

		config = function()
			require("barbar").setup()

			local key = vim.keymap.set -- create a shortcut for barbar
			key("n", "<leader>bc", ":BufferClose<CR>", { noremap = true, silent = true })
			key("n", "<leader>br", ":BufferRestore<CR>", { noremap = true, silent = true })
			key("n", "<leader>bn", ":BufferNext<CR>", { noremap = true, silent = true })
			key("n", "<leader>bp", ":BufferPrevious<CR>", { noremap = true, silent = true })

			local opts = { noremap = true, silent = true }

			-- BufferGoto mappings
			vim.keymap.set({ "n", "v", "i" }, "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
			vim.keymap.set({ "n", "v", "i" }, "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
			vim.keymap.set({ "n", "v", "i" }, "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
			vim.keymap.set({ "n", "v", "i" }, "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
			vim.keymap.set({ "n", "v", "i" }, "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
			vim.keymap.set({ "n", "v", "i" }, "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
			vim.keymap.set({ "n", "v", "i" }, "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
			vim.keymap.set({ "n", "v", "i" }, "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
			vim.keymap.set({ "n", "v", "i" }, "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)

			-- BufferLast mapping
			vim.keymap.set({ "n", "v", "i" }, "<A-0>", "<Cmd>BufferLast<CR>", opts)
		end,
	},
}
