-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2403.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 102400 then
  return mp.CLEAN
end
local l_0_1 = (pesecs[pehdr.NumberOfSections]).PointerToRawData + (pesecs[pehdr.NumberOfSections]).SizeOfRawData
if l_0_0 - l_0_1 > 102400 then
  (mp.set_mpattribute)("Lua:OverlayGT100")
end
;
(mp.set_mpattribute)("Lua:OverlayLE100")
return mp.CLEAN

