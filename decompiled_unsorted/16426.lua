-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16426.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
if not (string.find)(l_0_0, "/upload", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

