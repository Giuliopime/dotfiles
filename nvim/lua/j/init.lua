require("j.options")
require("j.keymaps")
require("j.lazy")
require("j.theme")

local has = function(x)
   return vim.fn.has(x) == 1
end

local is_mac = has "macunix"

if is_mac then
	require('j.macos')
end
