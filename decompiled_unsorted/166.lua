-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/166.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[5]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_9, l_0_10 = nil
  end
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC34: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC43: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC52: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC61: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC70: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC79: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC88: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC97: Confused about usage of register: R0 in 'UnsetPending'

  if (l_0_0 == nil or not (string.find)(l_0_0, "ifm", 1, true) or (not (string.find)(l_0_0, "activate ", 1, true) and not (string.find)(l_0_0, "ac ", 1, true) and not (string.find)(l_0_0, "act ", 1, true)) or (not (string.find)(l_0_0, "instance ", 1, true) and not (string.find)(l_0_0, "in ", 1, true) and not (string.find)(l_0_0, "i ", 1, true) and not (string.find)(l_0_0, "inst ", 1, true)) or ((string.find)(l_0_0, "create full", 1, true) or (string.find)(l_0_0, "cr fu", 1, true))) then
    add_parents()
    return mp.INFECTED
  end
  return mp.CLEAN
end

