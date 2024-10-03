return {
    {
        "nvimtools/none-ls.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        lazy = true,
        keys = { { "<leader>b", mode = "n" } },
        config = function()
            require("configs.none-ls")
        end,
    },
    {
        "neovim/nvim-lspconfig",
        event = "LspAttach",
        lazy = true,
    },
    {
        "rafamadriz/friendly-snippets",
        lazy = true,
        event = "InsertEnter",
    },
    {
        "L3MON4D3/LuaSnip",
        event = "InsertEnter",
        lazy = true,
        branch = "master",
        -- install jsregexp (optional!).
        -- why happen error all build times!?!?
        -- build = "make install_jsregexp",
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end
    },
    {
        "j-hui/fidget.nvim", --lsp notify
        event = "BufEnter",
        lazy = true,
        config = true -- setup({})
    },
    {
        "saadparwaiz1/cmp_luasnip",
        event = "InsertEnter",
        lazy = true,
    },
    {
        "hrsh7th/cmp-nvim-lsp",
        event = "InsertEnter",
        lazy = true
    },
    {
        "f3fora/cmp-spell",
        event = "InsertEnter",
        lazy = true,
    },
    {
        "hrsh7th/cmp-buffer",
        event = "InsertEnter",
        lazy = true,
    },
    {
        "hrsh7th/cmp-path",
        event = "InsertEnter",
        lazy = true,
    },
    {
        "hrsh7th/cmp-cmdline",
        event = "CmdlineEnter",
        lazy = true,
    },
    {
        "onsails/lspkind.nvim",
        event = "InsertEnter",
        lazy = true,
    },
    {
        "nvimdev/lspsaga.nvim",
        event = "InsertEnter",
        lazy = true,
    },
    {
        "hrsh7th/nvim-cmp",
        events = { "InsertEnter", "CmdlineEnter" },
        config = function()
            require("configs.nvim-cmp")
        end
    },

}
