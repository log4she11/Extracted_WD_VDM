-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/791.luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1003.002", "credentialdumping")
local l_0_0, l_0_1 = pcall(bm.get_current_process_startup_info)
if l_0_0 then
  local l_0_2 = l_0_1.command_line
  if l_0_2 ~= nil then
    l_0_2 = (string.lower)(l_0_2)
    local l_0_3 = (mp.GetExecutablesFromCommandLine)(l_0_2)
    for l_0_7,l_0_8 in ipairs(l_0_3) do
      l_0_8 = (mp.ContextualExpandEnvironmentVariables)(l_0_8)
      if (sysio.IsFileExists)(l_0_8) then
        (bm.add_related_file)(l_0_8)
      end
    end
  end
end
do
  l_0_2 = mp
  l_0_2 = l_0_2.INFECTED
  return l_0_2
end

