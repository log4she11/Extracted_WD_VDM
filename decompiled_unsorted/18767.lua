-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18767.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.command_line ~= nil then
  local l_0_1 = {}
  l_0_1[".tmp"] = true
  local l_0_2 = (string.lower)(l_0_0.command_line)
  bm_AddRelatedFileFromCommandLine(l_0_2, l_0_1, nil, 1)
  return mp.INFECTED
end
do
  return mp.CLEAN
end

