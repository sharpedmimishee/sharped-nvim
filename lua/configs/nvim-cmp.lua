local cmp = require("cmp")
local lspkind = require('lspkind')
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-j>'] = cmp.mapping.scroll_docs(-4),
      ['<C-k>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { 
            name = "spell",
            option = {
                keep_all_entries = false,
                enable_in_context = function()
                    return true
                end,
                preselect_correct_word = true,
            },
        },
        { name = "buffer" },
        { name = "path" },

    }),
    formatting = {
        format = lspkind.cmp_format({
            mode = 'text_symbol', -- show only symbol annotations
            symbol_map = {
                Text = "󰭷",
                Snippet = "< >",
                Function = "󰡱",
                Variable = "",
                Property = "",
            },
            maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
            -- can also be a function to dynamically calculate max width such as 
            -- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
            ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
            show_labelDetails = true, -- show labelDetails in menu. Disabled by default

            -- The function below will be called before any actual modifications from lspkind
            -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
            before = function (entry, vim_item)
                return vim_item
            end
        })
    }
})
vim.keymap.set('n', '<leader>b', function()
  vim.lsp.buf.format { async = true }
end, opts)
-- `:` cmdline setup.
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        {
            name = 'cmdline',
            option = {
                ignore_cmds = { 'Man', '!' }
            }
        }
    })
})
-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local ca = require('cmp_nvim_lsp').default_capabilities()

-- An example for configuring `clangd` LSP to use nvim-cmp as a completion engine
local c = require("lspconfig");
c.rust_analyzer.setup({
    capabilities = ca,
    settings = {
        ['rust-analyzer'] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            checkOnSave = {
                command = "clippy",
            }
        },
    },
})
c.ts_ls.setup({
    capabilities = ca,
    settings = {
        ['ts_ls'] = {},
    },
})
c.csharp_ls.setup({
    capabilities = ca,
    settings = {
        ['csharp_ls'] = {},
    },
})
c.lua_ls.setup({
    capabilities = ca,
    settings = {
        ['lua_ls'] = {},
    },
})
c.gopls.setup({
    capabilities = ca,
    cmd = {"gopls"},
    settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
})
require("lspsaga").setup({
    border_style = "single",
    symbol_in_winbar = {
        enable = true,
    },
    code_action_icon = "",
    code_action_lightbulb = {
        enable = true,
    },
})
vim.keymap.set("n", "<leader>xc", "<CMD>Lspsaga code_action<CR>")
vim.keymap.set("n", "<leader>xs", "<CMD>Lspsaga rename<CR>")
vim.keymap.set("n", "<leader>xz", "<CMD>Lspsaga hover_doc<CR>")
