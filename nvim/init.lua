require('ajanbekzat/base')
require('ajanbekzat/highlights')
require('ajanbekzat/maps')
require('ajanbekzat/plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac then
  require('ajanbekzat/macos')
end
if is_win then
  require('ajanbekzat/windows')
end

if is_mac == 1 then
  require('ajanbekzat/macos')
end
if is_win == 1 then
  require('ajanbekzat/windows')
end
if is_wsl == 1 then
  require('ajanbekzat/wsl')
end
