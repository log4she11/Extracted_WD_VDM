-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18005.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 19, 128)
local l_0_1 = (string.byte)(l_0_0, 1) + 2
if #l_0_0 < l_0_1 then
  return mp.CLEAN
end
if (string.byte)(l_0_0, l_0_1) == 232 then
  return mp.INFECTED
end
return mp.CLEAN

