-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1336.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((this_sigattrlog[3]).utf8p2)
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
if (string.find)(l_0_0, "net.webclient", 1, true) and (string.find)(l_0_0, "download", 1, true) and ((string.match)(l_0_0, "[^s]iex[^e]") or (string.find)(l_0_0, "invoke-expr", 1, true) or (string.find)(l_0_0, ".bat", 1, true) or (string.find)(l_0_0, ".ps1", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN

