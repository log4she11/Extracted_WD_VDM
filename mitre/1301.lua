-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1301.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
do
  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)(l_0_0.image_path)
    if l_0_1:find("microsoft.ad.platform.commandagent", 1, true) then
      return mp.CLEAN
    end
    if l_0_1:find("wsmprovhost.exe", 1, true) then
      return mp.CLEAN
    end
  end
  TrackPidAndTechnique("CMDHSTR", "T1129", "mklink")
  return mp.LOWFI
end

