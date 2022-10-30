-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1814.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(bm.get_current_process_startup_info)
if l_0_0 and l_0_1 ~= nil then
  local l_0_2 = l_0_1.ppid
  local l_0_3 = l_0_1.command_line
  if l_0_3 ~= nil then
    l_0_3 = (string.lower)(l_0_3)
    if l_0_3:find("devenv.exe") or l_0_3:find("msbuild.exe") or l_0_3:find("cl.exe") then
      return mp.CLEAN
    end
    if l_0_3:find("epsecurityservice.exe") then
      return mp.CLEAN
    end
    if l_0_3:find("services.exe") or l_0_3:find("svchost.exe") or l_0_3:find("explorer.exe") then
      return mp.CLEAN
    end
    if IsDetectionThresholdMet(l_0_2) then
      AddResearchData(l_0_2, true)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

