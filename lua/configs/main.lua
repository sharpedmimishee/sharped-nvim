require("configs.autocmd")
require("configs.keys")
vim.loader.enable()
local o = vim.opt

o.number = true
o.smartindent = true
o.expandtab = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.linebreak = true
o.smartcase = true
o.ignorecase = true
o.spell = true
o.clipboard="unnamedplus"
o.cmdheight = 0
o.laststatus=3
vim.opt.spelllang = { "en_us", "cjk" }
o.termguicolors = true
vim.notify = require("notify")
