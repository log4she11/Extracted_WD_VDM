-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21812.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr, 32)
local l_0_2 = (mp.readu_u32)(l_0_0, 4)
do
  if l_0_2 ~= 2332783616 then
    local l_0_1 = 0
    if l_0_2 ~= 2333176832 then
      return mp.CLEAN
    else
      l_0_1 = 3
    end
  end
  local l_0_3, l_0_4 = , nil
  -- DECOMPILER ERROR at PC41: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC48: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC54: Overwrote pending register: R4 in 'AssignReg'

  if l_0_3 ~= 0 or nil ~= 1 then
    return mp.CLEAN
  end
  if l_0_4 ~= 131 then
    return mp.CLEAN
  end
  local l_0_5, l_0_6 = , nil
  -- DECOMPILER ERROR at PC79: Overwrote pending register: R6 in 'AssignReg'

  -- DECOMPILER ERROR at PC86: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC92: Overwrote pending register: R6 in 'AssignReg'

  if l_0_3 ~= 0 or l_0_6 ~= nil then
    return mp.CLEAN
  end
  local l_0_7, l_0_8 = , nil
  -- DECOMPILER ERROR at PC112: Overwrote pending register: R8 in 'AssignReg'

  -- DECOMPILER ERROR at PC119: Overwrote pending register: R7 in 'AssignReg'

  -- DECOMPILER ERROR at PC125: Overwrote pending register: R8 in 'AssignReg'

  if l_0_3 ~= 0 or l_0_8 ~= nil then
    return mp.CLEAN
  end
  if l_0_3 == 0 then
    (pe.mmap_patch_va)(pevars.sigaddr, "�E")
    ;
    (pe.mmap_patch_va)(pevars.sigaddr + 7 + l_0_3, "\235\b")
  else
    ;
    (pe.mmap_patch_va)(pevars.sigaddr, "ǅ")
    ;
    (pe.mmap_patch_va)(pevars.sigaddr + 7 + l_0_3, "\235\014")
  end
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 4 + l_0_3, "\000\000\000")
  return mp.CLEAN
end

