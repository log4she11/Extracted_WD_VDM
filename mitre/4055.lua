-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4055.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC11: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    taint(l_0_0, "remote_file_created_taint", 3600)
    local l_0_3 = nil
    AppendToRollingQueue("queue_pid_taintfactory_b", ((bm.get_current_process_startup_info)()).ppid, 1, 600)
    local l_0_4, l_0_5 = , (bm.get_process_relationships)(((bm.get_current_process_startup_info)()).ppid)
    for l_0_9,l_0_10 in ipairs(l_0_5) do
      local l_0_6 = nil
      -- DECOMPILER ERROR at PC34: Confused about usage of register: R8 in 'UnsetPending'

      ;
      (bm.add_related_process)(R8_PC34.ppid)
      TrackPidAndTechniqueBM(R8_PC34.ppid, "T1105", "CommandAndControl")
    end
    return mp.INFECTED
  end
  do
    return mp.CLEAN
  end
end

