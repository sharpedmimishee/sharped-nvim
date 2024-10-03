return {
    {
        "RRethy/nvim-treesitter-endwise",
        lazy = true,
        event = "BufRead",
    },
    {
        "windwp/nvim-ts-autotag",
        lazy = true,
        event = "BufRead",
    },
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = true,
		event = "BufRead",
        config = function()
            require("configs.treesitter")
        end
	},
}
