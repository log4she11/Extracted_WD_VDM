-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2503.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if (string.find)(l_0_0, "->[NormalizedRTF]", 1, true) ~= nil then
  (mp.set_mpattribute)("Lua:OLE2LinkInNormalizedRTF")
end
if (string.find)(l_0_0, "->(Rtf", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

