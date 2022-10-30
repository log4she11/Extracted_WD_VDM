-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/121.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_AMSI then
  local l_0_1, l_0_2 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_APPNAME)
  local l_0_3, l_0_4 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
  if l_0_1 == nil or l_0_3 == nil or l_0_4 == nil or l_0_2 == nil then
    return mp.CLEAN
  end
  local l_0_5, l_0_6 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
  if l_0_5 and l_0_6 ~= nil then
    local l_0_7 = (string.lower)(l_0_6)
    if (string.find)(l_0_7, "telemetry-generator.ps1") then
      TrackPidAndTechnique(l_0_4, "ttexclusion", "ttexclusion-mitretel")
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

