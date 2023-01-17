require("giuliopime.set")
require("giuliopime.remap")
require("giuliopime.packer")

local has = function(x)
   return vim.fn.has(x) == 1
end

local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
   require('giuliopime.macos')
end
if is_win then
   require('giuliopime.windows')
end
