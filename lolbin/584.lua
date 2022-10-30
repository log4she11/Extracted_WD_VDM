-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/584.luac 

-- params : ...
-- function num : 0
if IsPidExcluded("CMDHSTR") then
  return mp.CLEAN
end
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
if l_0_0.image_path ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = l_0_1:match("([^\\]+)$")
  local l_0_3 = {}
  l_0_3["winlogon.exe"] = true
  if l_0_3[l_0_2] then
    return mp.CLEAN
  end
end
do
  TrackPidAndTechnique("CMDHSTR", "T1218", "lolbin_atbroker")
  if IsDetectionThresholdMet("CMDHSTR") then
    return mp.INFECTED
  end
  return mp.LOWFI
end

