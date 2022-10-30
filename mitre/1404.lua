-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1404.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil and l_0_0.image_path ~= nil then
  local l_0_1 = GetRealPidForScenario("CMDHSTR")
  if IsPidExcluded(l_0_1) then
    return mp.CLEAN
  end
  local l_0_2 = l_0_0.image_path
  local l_0_3 = (string.lower)(l_0_2:match("([^\\]+)$"))
  local l_0_4 = {}
  l_0_4["ccmexec.exe"] = true
  l_0_4["gpscript.exe"] = true
  l_0_4["mpcmdrun.exe"] = true
  l_0_4["mssense.exe"] = true
  l_0_4["senseir.exe"] = true
  if l_0_4[l_0_3] then
    return mp.CLEAN
  end
  if IsDetectionThresholdMet(l_0_1) and (IsTacticObservedForPid(l_0_1, "remoteservice-target") or IsTacticObservedForPid(l_0_1, "wmi_childproc") or IsTechniqueObservedForPid(l_0_1, "T1021.006")) then
    return mp.INFECTED
  end
end
do
  return mp.LOWFI
end

