-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1811.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (string.lower)(l_0_0.command_line)
if (string.find)(l_0_1, "mshta", 1, true) ~= nil then
  if (string.find)(l_0_1, "qims.hta", 1, true) ~= nil then
    return mp.CLEAN
  end
  if (string.find)(l_0_1, ".hta", 1, true) == nil then
    local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
    for l_0_6,l_0_7 in ipairs(l_0_2) do
      if (sysio.IsFileExists)(l_0_7) and not (mp.IsKnownFriendlyFile)(l_0_7, true, false) then
        (bm.add_threat_file)(l_0_7)
      end
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

