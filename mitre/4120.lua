-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4120.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_9, l_0_10, l_0_11, l_0_12, l_0_13, l_0_14, l_0_15, l_0_16 = nil
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

  -- DECOMPILER ERROR at PC106: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC115: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and ((string.find)(l_0_0, "*.db", 1, true) or (string.find)(l_0_0, "*.txt", 1, true) or (string.find)(l_0_0, "*.doc", 1, true) or (string.find)(l_0_0, "*.pdf", 1, true) or (string.find)(l_0_0, "*.xls", 1, true) or (string.find)(l_0_0, "*.sh", 1, true) or (string.find)(l_0_0, "*.c", 1, true)) and ((string.find)(l_0_0, "/root/", 1, true) or (string.find)(l_0_0, "/root ", 1, true) or (string.find)(l_0_0, "/home/", 1, true) or (string.find)(l_0_0, "/home ", 1, true) or (string.find)(l_0_0, " / ", 1, true)) then
    TrackPidAndTechniqueBM("BM", "T1083", "Discovery_FileAndDirectoryDiscovery")
    TrackPidAndTechniqueBM("BM", "T1486", "Impact_FileEncryption")
    addRelatedProcess()
    reportRelatedBmHits()
    RemediateProcessTreeForLinux()
    return mp.INFECTED
  end
  return mp.CLEAN
end

