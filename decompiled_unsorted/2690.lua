-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2690.luac 

-- params : ...
-- function num : 0
if (mp.IsKnownFriendlyFile)((bm.get_imagepath)(), true, true) == true then
  return mp.CLEAN
end
local l_0_0 = nil
local l_0_1, l_0_2 = pcall(bm.get_current_process_startup_info)
if l_0_1 then
  l_0_0 = l_0_2.command_line
end
if l_0_0 ~= nil then
  local l_0_3 = (mp.GetExecutablesFromCommandLine)(l_0_0)
  for l_0_7,l_0_8 in ipairs(l_0_3) do
    l_0_8 = (mp.ContextualExpandEnvironmentVariables)(l_0_8)
    if (sysio.IsFileExists)(l_0_8) then
      (bm.add_related_file)(l_0_8)
    end
  end
end
do
  l_0_3 = mp
  l_0_3 = l_0_3.INFECTED
  return l_0_3
end

