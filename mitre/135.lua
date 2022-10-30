-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/135.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)()
if l_0_0 == nil or l_0_0:find("%-%>%(UTF%-16LE%)$") == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
local l_0_2 = "|explorer.exe|"
if l_0_2:find(l_0_1) then
  return mp.CLEAN
end
local l_0_3 = tostring(headerpage)
local l_0_4 = (string.match)(l_0_3, "<Exec>.*<Command>(.*)</Command>.*</Exec>")
local l_0_5 = (string.match)(l_0_3, "<Exec>.*<Arguments>(.*)</Arguments>.*</Exec>")
local l_0_6 = (string.match)(l_0_3, "<Exec>.*<WorkingDirectory>(.*)</WorkingDirectory>.*</Exec>")
if l_0_4 == nil then
  return mp.CLEAN
end
if l_0_6 ~= nil and l_0_6:sub(-1) ~= "\\" then
  l_0_6 = l_0_6 .. "\\"
end
local l_0_7 = l_0_4
if l_0_5 ~= nil then
  l_0_7 = l_0_7 .. " " .. l_0_5
end
;
(mp.vfo_add_buffer)(l_0_7, "[TaskCommand]", 0)
local l_0_8 = {}
;
(table.insert)(l_0_8, l_0_7)
;
(MpCommon.SetPersistContextNoPath)("Lua:SchedTaskCommand", l_0_8, 100)
TrackCommandLineAndTechnique(l_0_7, "T1053.005:schtask_target")
if l_0_6 ~= nil then
  TrackCommandLineAndTechnique(l_0_6 .. l_0_7, "T1053.005:schtask_target")
else
  TrackCommandLineAndTechnique("c:\\windows\\system32\\" .. l_0_7, "T1053.005:schtask_target")
  TrackCommandLineAndTechnique("c:\\windows\\" .. l_0_7, "T1053.005:schtask_target")
end
local l_0_9 = (mp.GetExecutablesFromCommandLine)(l_0_7)
for l_0_13,l_0_14 in ipairs(l_0_9) do
  l_0_14 = (mp.ContextualExpandEnvironmentVariables)(l_0_14)
  local l_0_15 = false
  if (sysio.IsFileExists)("c:\\windows\\system32\\" .. l_0_14) then
    l_0_14 = "c:\\windows\\system32\\" .. l_0_14
    l_0_15 = true
  else
    if (sysio.IsFileExists)("c:\\windows\\" .. l_0_14) then
      l_0_14 = "c:\\windows\\" .. l_0_14
      l_0_15 = true
    else
      if (sysio.IsFileExists)(l_0_14) then
        l_0_15 = true
      else
        if l_0_6 ~= nil and (sysio.IsFileExists)(l_0_6 .. l_0_14) then
          l_0_14 = l_0_6 .. l_0_14
          l_0_15 = true
        else
          if (sysio.IsFileExists)("c:\\windows\\syswow64\\" .. l_0_14) then
            l_0_14 = "c:\\windows\\syswow64\\" .. l_0_14
            l_0_15 = true
          end
        end
      end
    end
  end
  if l_0_14:match("windows\\ccmcache\\") or l_0_14:match("\\sysvol\\") or l_0_14:match("\\netlogon\\") then
    return mp.CLEAN
  end
  if l_0_14:match("windowsdefenderatponboardingscript.cmd$") or l_0_14:match("defenderatponboarding.cmd$") then
    return mp.CLEAN
  end
  if l_0_15 then
    local l_0_16, l_0_17 = pcall(mp.IsKnownFriendlyFile, l_0_14, false, false)
    if l_0_16 then
      if l_0_17 then
        (mp.ReportLowfi)(l_0_14, 2557680683)
      else
        ;
        (mp.ReportLowfi)(l_0_14, 3998179614)
      end
    end
    local l_0_18 = (MpCommon.QueryPersistContext)(l_0_14, "SuspPathsFromSchTask")
    if not l_0_18 then
      (MpCommon.AppendPersistContext)(l_0_14, "SuspPathsFromSchTask", 3600)
    end
  end
end
return mp.INFECTED

