-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20761.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6 = nil
  else
  end
  -- DECOMPILER ERROR at PC29: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC35: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC44: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC53: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC62: Confused about usage of register: R0 in 'UnsetPending'

  if (((this_sigattrlog[4]).matched and (string.lower)((this_sigattrlog[4]).utf8p2) == nil) or (string.len)((string.lower)((this_sigattrlog[4]).utf8p2)) <= 3 or (not (string.find)((string.lower)((this_sigattrlog[4]).utf8p2), "transfer", 1, true) and not (string.find)((string.lower)((this_sigattrlog[4]).utf8p2), "addfile", 1, true)) or not (string.find)((string.lower)((this_sigattrlog[4]).utf8p2), "bitsadmin", 1, true) or (string.find)((string.lower)((this_sigattrlog[4]).utf8p2), "\\svchost", 1, true)) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

