-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20368.luac 

-- params : ...
-- function num : 0
local l_0_0 = pevars.sigaddr + 32
do
  if (string.find)((pe.mmap_va)(l_0_0, 64), "t\017", 1, true) == nil and (string.find)((pe.mmap_va)(l_0_0, 32), "t\003", 1, true) == nil and (string.find)((pe.mmap_va)(l_0_0, 64), "t\018", 1, true) == nil then
    local l_0_1 = (string.find)((pe.mmap_va)(l_0_0, 64), "t\002", 1, true)
  end
  -- DECOMPILER ERROR at PC58: Confused about usage of register: R1 in 'UnsetPending'

  ;
  (pe.mmap_patch_va)(l_0_0 + l_0_1 - 1, "\235")
  return mp.INFECTED
end

