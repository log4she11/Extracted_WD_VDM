-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/419.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetParentProcInfo)()
if l_0_1 == nil or l_0_1.ppid == nil then
  return mp.CLEAN
end
TrackPidAndTechnique(l_0_0, "T1003", "shadowcopy_access")
if IsDetectionThresholdMet(l_0_0) or IsDetectionThresholdMet(l_0_1.ppid) then
  return mp.INFECTED
end
local l_0_2 = GetTacticsTableForPid(l_0_1.ppid)
if l_0_2.winrshost_childproc or l_0_2.wsmprovhost_childproc or l_0_2.wmi_childproc or l_0_2.remotedropexe_childproc or l_0_2.python_childproc or l_0_2.rundll32_childproc or l_0_2.wscript_childproc or l_0_2.cscript_childproc or l_0_2.mshta_childproc or l_0_2.webshell_childproc or l_0_2.exec_remotedroppedscript_a then
  return mp.INFECTED
end
return mp.LOWFI

