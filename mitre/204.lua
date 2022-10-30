-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/204.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  if l_0_1 == nil then
    return mp.CLEAN
  end
  local l_0_2 = l_0_1:match("([^\\]+)$")
  local l_0_3 = {}
  l_0_3["ossec-agent.exe"] = true
  l_0_3["qualysagent.exe"] = true
  l_0_3["msexchangehmworker.exe"] = true
  l_0_3["w32main2.exe"] = true
  l_0_3["wagsrvc.exe"] = true
  l_0_3["humvpnlogon.exe"] = true
  l_0_3["imogenassistant.exe"] = true
  l_0_3["imogenservice.exe"] = true
  l_0_3["pedclient.wshost.exe"] = true
  l_0_3["cscan.exe"] = true
  l_0_3["ciscod.exe"] = true
  l_0_3["ltsvc.exe"] = true
  if l_0_3[l_0_2] then
    return mp.CLEAN
  end
end
do
  TrackPidAndTechnique("CMDHSTR", "T1018", "remote_system_discovery")
  if IsDetectionThresholdMet("CMDHSTR") then
    return mp.LOWFI
  end
  return mp.CLEAN
end

