-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4050.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6 = nil
  end
  -- DECOMPILER ERROR at PC9: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  if isTainted(l_0_0, "remote_file_created_taint") and (string.find)(l_0_0, "/home/", 1, true) ~= 1 then
    TrackPidAndTechniqueBM("BM", "T1098.004", "Persistence")
    return mp.INFECTED
  end
  -- DECOMPILER ERROR at PC33: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC41: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC49: Confused about usage of register: R0 in 'UnsetPending'

  if (string.sub)(l_0_0, 0, 5) == "/tmp/" or (string.sub)(l_0_0, 0, 9) == "/var/tmp/" or (string.sub)(l_0_0, 0, 9) == "/dev/shm/" then
    TrackPidAndTechniqueBM("BM", "T1098.004", "Persistence")
    return mp.INFECTED
  end
  return mp.CLEAN
end

