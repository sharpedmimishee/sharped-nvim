-- Requires nvim-treesitter installed
require('nvim-treesitter.configs').setup {
    endwise = {
        enable = true,
    },
    -- A list of parser names, or "all" (the listed parsers MUST always be installed)
    ensure_installed = { "rust", "lua", "css", "go", "html",  "javascript", "vim", "vimdoc", "query", "markdown", "markdown_inline", "c_sharp" },
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
require("nvim-treesitter.install").prefer_git = true
require('nvim-ts-autotag').setup({
    opts = {
        -- Defaults
        enable_close = true, -- Auto close tags
        enable_rename = true, -- Auto rename pairs of tags
        enable_close_on_slash = false -- Auto close on trailing </
    },
    -- Also override individual filetype configs, these take priority.
    -- Empty by default, useful if one of the "opts" global settings
    -- doesn't work well in a specific filetype
    -- per_filetype = {
        --   ["html"] = {
            --     enable_close = false
            --   }
            -- }
        })
