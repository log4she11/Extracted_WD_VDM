-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20361.luac 

-- params : ...
-- function num : 0
local l_0_0 = 0
local l_0_1 = (string.byte)((pe.mmap_va)(pevars.sigaddr + 18, 1), 1)
if l_0_1 == 129 then
  l_0_0 = 24
else
  if l_0_1 == 131 then
    l_0_0 = 21
  else
    l_0_0 = 29
  end
end
local l_0_2 = (pe.mmap_va)(pevars.sigaddr + l_0_0, 64)
local l_0_3 = (string.find)(l_0_2, "t", 1, true)
if l_0_3 == nil then
  return mp.CLEAN
end
;
(pe.mmap_patch_va)(pevars.sigaddr + l_0_0 + l_0_3 - 1, "\235")
return mp.INFECTED

