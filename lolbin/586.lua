-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/586.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil and l_0_0.ppid ~= nil then
  local l_0_1 = l_0_0.ppid
  local l_0_2 = (string.lower)(l_0_0.image_path)
  local l_0_3 = l_0_2:match("([^\\]+)$")
  local l_0_4 = {}
  l_0_4["circuit.exe"] = true
  if l_0_4[l_0_3] then
    return mp.CLEAN
  end
  if IsPidExcluded(l_0_1) then
    return mp.CLEAN
  end
  TrackPidAndTechnique(l_0_1, "T1021.006", "lolbin_wmic")
  if IsDetectionThresholdMet(l_0_1) then
    return mp.INFECTED
  end
  return mp.LOWFI
end
do
  return mp.CLEAN
end

