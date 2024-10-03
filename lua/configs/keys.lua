vim.api.nvim_set_var('mapleader', ' ')

vim.keymap.set('n', 'cl', "<CMD>colorscheme luanium<CR>")
vim.keymap.set('n', '<leader>r', "<CMD>luafile %<CR>")
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', 'df', '$', {desc="moves the cursor to end of line."})
vim.keymap.set('n', 'ds', "0", {desc="start of line"})


