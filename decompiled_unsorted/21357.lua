-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21357.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = l_0_0.command_line
l_0_1 = (string.lower)(l_0_1)
if (string.find)(l_0_1, ":\\program files", 1, true) or (string.find)(l_0_1, "\\windows defender advanced threat", 1, true) or (string.find)(l_0_1, "\\microsoft intune management", 1, true) or (string.find)(l_0_1, "\\iscvx\\", 1, true) or (string.find)(l_0_1, "healthcheck", 1, true) or (string.find)(l_0_1, "\\datacollection\\", 1, true) then
  return mp.CLEAN
end
if IsSenseRelatedProc() == true then
  return mp.CLEAN
end
;
(bm.add_action)("EmsScan", 5000)
return mp.INFECTED

