-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17409.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 118784 and l_0_0 <= 122880 and pehdr.NumberOfSections == 6 and (pesecs[4]).Name == ".crt1" then
  return mp.INFECTED
end
return mp.CLEAN

