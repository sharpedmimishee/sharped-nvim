return {
    {
        "RRethy/nvim-treesitter-endwise",
        lazy = true,
    },
    {
        "windwp/nvim-ts-autotag",
        lazy = true,
    },
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = true,
		event = "BufRead",
        dependencies = {"RRethy/nvim-treesitter-endwise","windwp/nvim-ts-autotag"},
        config = function()
            require("configs.treesitter")
        end
	},
}
