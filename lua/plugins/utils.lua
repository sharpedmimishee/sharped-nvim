return {
    {
        'stevearc/overseer.nvim',
        lazy = true,
        keys={{":", ":", mode="n"}},
        config = true
    },
	{
		"lewis6991/gitsigns.nvim",
		event = "VimEnter",
		config = function()
			require("gitsigns").setup()
		end
	},
	{
		"nvim-lua/plenary.nvim",
		lazy = true
	},
	{
		"nvim-telescope/telescope.nvim",
		lazy = true,
		dependencies = {"nvim-lua/plenary.nvim"},
		branch = "master",
		keys = {
			{"<leader>ff", mode="n"},
			{"<leader>fg", mode="n"},
			{"<leader>fb", mode="n"},
			{"<leader>fh", mode="n"}
		},
		config = function()
			require("telescope").setup()
		end
	},
	{
		"nvim-tree/nvim-web-devicons",
		lazy = true,
        event = "VimEnter",
	},
	{
		"stevearc/oil.nvim",
		lazy = true,
		event = "VimEnter",
		keys = {{"<leader>c", "<CMD>Oil<CR>", mode="n", desc="Open parent directory"}},
		cmd = {"Oil"},
		config = function()
			require("configs.oil")
		end
	},
	{
		"akinsho/toggleterm.nvim",
		lazy = true,
		version = "*",
        keys = {{"<leader>t", "<CMD>lua _nu_toggle()<CR>", mode="n", desc="Open/Close terminal"}},
		cmd = "ToggleTerm",
		config = function()
			require("configs.toggleterm")
		end
	},
    {
        "folke/trouble.nvim",
        lazy = true,
        keys = {{"<leader>v", "<CMD>Trouble diagnostics toggle<CR>", mode="n", desc="Open/Close trouble.nvim"}},
        cmd = "Trouble",
        config = true,
    },
	{
		"folke/which-key.nvim",
		lazy = true,
		event = "VimEnter",
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		}
	}
}
