-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/123.luac 

-- params : ...
-- function num : 0
do
  if GetRealPidForScenario("AMSI") == nil then
    local l_0_0, l_0_1 = GetRealPidForScenario("RTP")
  end
  -- DECOMPILER ERROR at PC9: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC15: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_2 = nil
  if GetTacticsTableForPid(l_0_0) == nil then
    return mp.CLEAN
  end
  if (GetTacticsTableForPid(l_0_0)).wmi_childproc or (GetTacticsTableForPid(l_0_0)).wsmprovhost_childproc or (GetTacticsTableForPid(l_0_0)).winrshost_childproc or (GetTacticsTableForPid(l_0_0)).exec_remotedroppedscript_a or (GetTacticsTableForPid(l_0_0)).exec_remotedroppedscript_b or (GetTacticsTableForPid(l_0_0)).ExecRemoteDroppedExe or (GetTacticsTableForPid(l_0_0)).exec_from_remoteshare then
    return mp.INFECTED
  end
  if (mp.get_mpattribute)("Lua:TT:IsDetectionThresholdMet") and (IsTacticObservedForParents(l_0_2, "exec_from_remoteshare", 2) or IsTacticObservedForParents(l_0_2, "remoteservice-target", 2)) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

