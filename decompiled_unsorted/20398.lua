-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20398.luac 

-- params : ...
-- function num : 0
local l_0_0 = 20
local l_0_1 = (pe.mmap_va)(pevars.sigaddr + l_0_0, 256)
local l_0_2 = (string.find)(l_0_1, "t", 1, true)
if l_0_2 == nil then
  return mp.CLEAN
end
l_0_0 = l_0_0 + l_0_2 - 1
;
(pe.mmap_patch_va)(pevars.sigaddr + (l_0_0), "\235")
l_0_1 = (pe.mmap_va)(pevars.sigaddr, l_0_0)
for l_0_6 = 1, l_0_0 do
  local l_0_7 = (string.find)(l_0_1, "`\185....�a", l_0_6, true)
  if not l_0_7 then
    break
  end
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + l_0_7 - 1, "��������\144")
end
do
  return mp.INFECTED
end

