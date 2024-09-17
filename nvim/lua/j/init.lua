require("j.set")
require("j.remap")
require("j.lazy")
require("j.lsp")
require("j.theme")

local has = function(x)
   return vim.fn.has(x) == 1
end

local is_mac = has "macunix"

if is_mac then
	require('j.macos')
end
