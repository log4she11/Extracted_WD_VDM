-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19526.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == true and l_0_0 >= 155648 and l_0_0 <= 204800 and (pehdr.NumberOfSections >= 6 or pehdr.NumberOfSections <= 7) and ((pesecs[1]).VirtualSize > 106496 or (pesecs[1]).VirtualSize < 118784) then
  return mp.INFECTED
end
return mp.CLEAN

