-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17366.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "word/_rels", 1, true) ~= nil and (mp.getfilesize)() < 400 then
  return mp.INFECTED
end
return mp.CLEAN

