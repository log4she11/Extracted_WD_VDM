-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1704.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_9, l_0_10 = nil
  end
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC22: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC31: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC40: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC49: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC58: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC67: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC76: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC85: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC94: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC103: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and (string.len)(l_0_0) > 3 and ((string.find)(l_0_0, " whoami", 1, true) or (string.find)(l_0_0, " quser", 1, true) or (string.find)(l_0_0, " type ", 1, true) or (string.find)(l_0_0, " nltest", 1, true) or (string.find)(l_0_0, " echo ", 1, true) or (string.find)(l_0_0, "net user", 1, true) or (string.find)(l_0_0, "net1 user", 1, true) or (string.find)(l_0_0, "systeminfo", 1, true) or (string.find)(l_0_0, "netlogon", 1, true) or (string.find)(l_0_0, "attackiq wmi", 1, true)) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

