-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/601.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  if IsPidExcluded(l_0_0.ppid) then
    return mp.CLEAN
  end
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = l_0_1:match("([^\\]+)$")
  local l_0_3 = {}
  l_0_3["net.exe"] = true
  if l_0_3[l_0_2] then
    return mp.CLEAN
  end
  if l_0_2 == "powershell.exe" then
    local l_0_4 = (mp.GetProcessCommandLine)(l_0_0.ppid)
    if l_0_4 ~= nil then
      l_0_4 = (string.lower)(l_0_4)
      if l_0_4:find("\\microsoft\\windows defender advanced threat protection\\datacollection\\", 1, true) then
        return mp.CLEAN
      end
    end
  end
end
do
  TrackPidAndTechnique("CMDHSTR", "T1033", "user_discovery")
  if IsDetectionThresholdMet("CMDHSTR") then
    return mp.INFECTED
  end
  return mp.LOWFI
end

