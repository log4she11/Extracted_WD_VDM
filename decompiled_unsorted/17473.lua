-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17473.luac 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 3, 4)
if (mp.readu_u32)(l_0_0, 1) < 1048576 then
  return mp.CLEAN
end
return mp.INFECTED

