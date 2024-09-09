require("toggleterm").setup({
    -- shell = "nu"
})
local Terminal = require("toggleterm.terminal").Terminal
local nu = Terminal:new({
	cmd = "nu",
	direction = "float",
	hidden = true
})

function _nu_toggle()
	nu:toggle()
end

