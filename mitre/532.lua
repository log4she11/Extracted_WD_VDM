-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/532.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
  local l_0_0, l_0_2 = nil, nil
  l_0_2 = (this_sigattrlog[2]).ppid
  local l_0_1, l_0_4, l_0_5 = nil
end
do
  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC18: Confused about usage of register: R1 in 'UnsetPending'

  if l_0_0 == nil or l_0_2 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC24: Confused about usage of register: R1 in 'UnsetPending'

  if IsPidExcluded(l_0_2) then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC33: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_3 = (string.lower)(l_0_0)
  if StringStartsWith(l_0_3, "%") then
    return mp.CLEAN
  end
  local l_0_6 = nil
  if (MpCommon.QueryPersistContext)(l_0_3, "NewPECreatedNoCert") then
    (bm.trigger_sig)("ExecNewlyCreatedUnsignedExe", "ExecNewlyCreatedUnsignedExe", l_0_6)
  end
  local l_0_7 = nil
  if (MpCommon.QueryPersistContext)(l_0_3, "SuspExeFileDroppedBySystemProcess") then
    (bm.trigger_sig)("ExecRemoteDroppedExe", "ExecRemoteDroppedExe", l_0_6)
    ;
    (bm.trigger_sig)("T1570", "exec_remotedroppedexe_a", l_0_6)
    return mp.INFECTED
  end
  if IsKeyInRollingQueue("DroppedByPossibleRemotelyCreatedProc", l_0_3) then
    (bm.trigger_sig)("T1570", "exec_remotedroppedexe_b", l_0_6)
    return mp.INFECTED
  end
  return mp.CLEAN
end

