-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3974.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
local l_0_1 = (mp.GetParentProcInfo)()
if l_0_1 ~= nil then
  TrackPidAndTechnique(l_0_1.ppid, "T1562.004", "DefenseEvasion")
end
if l_0_0 ~= nil and (IsTacticObservedForPid(l_0_0, "CommandAndControl_RemoteFileCopy") or IsTacticObservedForParents(l_0_0, "CommandAndControl_RemoteFileCopy", 2)) then
  return mp.INFECTED
end
return mp.CLEAN

