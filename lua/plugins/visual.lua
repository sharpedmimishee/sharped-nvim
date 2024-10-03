return {
    {
        "NvChad/nvim-colorizer.lua",
        lazy = true,
        event = "BufEnter",
        config = true
    },
    {
        "petertriho/nvim-scrollbar",
        lazy = true,
        event = "BufEnter",
        config = true
    },
    {
        "rcarriga/nvim-notify",
        lazy = true,
        event = "BufEnter",
        config = true
    },
    {
		"yamatsum/nvim-cursorline",
		lazy = true,
		event = "BufEnter",
        config = function()
            require("configs.cursorline")
        end
	},
	{
		"nvim-lualine/lualine.nvim",
		lazy = true,
        dependencies = "luanium.nvim",
		event = "VeryLazy",
        config = function()
            require("configs.lualine")
        end
	},
    {
        "lukas-reineke/indent-blankline.nvim",
        lazy = true,
        event = "BufEnter",
        main = "ibl",
        config = true
    }
}
