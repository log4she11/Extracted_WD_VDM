-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/200.luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["node.exe"] = true
l_0_0["masvc.exe"] = true
l_0_0["ltsvc.exe"] = true
l_0_0["java.exe"] = true
local l_0_1 = (mp.GetParentProcInfo)()
do
  if l_0_1 ~= nil then
    local l_0_2 = (string.lower)(l_0_1.image_path)
    if l_0_2 ~= nil and l_0_0[l_0_2:match("([^\\]+)$")] then
      return mp.CLEAN
    end
  end
  TrackPidAndTechnique("CMDHSTR", "T1057", "process_discovery")
  if IsDetectionThresholdMet("CMDHSTR") then
    return mp.LOWFI
  end
  return mp.CLEAN
end

