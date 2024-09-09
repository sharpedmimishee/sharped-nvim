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
		'nvim-telescope/telescope-fzf-native.nvim', 
		lazy = true,
		build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' 
	},
	{
		"nvim-telescope/telescope.nvim",
		lazy = true,
		dependencies = {"nvim-lua/plenary.nvim", 'nvim-telescope/telescope-fzf-native.nvim'},
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
	},
	{
		"stevearc/oil.nvim",
		lazy = true,
		event = "VimEnter",
		dependencies = {"nvim-tree/nvim-web-devicons"},
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
		"folke/which-key.nvim",
		lazy = true,
		event = "VimEnter",
		depedencies = {"nvim-tree/nvim-web-devicons"},
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
