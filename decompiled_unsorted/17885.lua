-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17885.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 28672 and l_0_0 < 40960 and pehdr.NumberOfSections == 1 and (pesecs[pevars.epsec]).Name == ".text" then
  return mp.INFECTED
end
return mp.CLEAN

