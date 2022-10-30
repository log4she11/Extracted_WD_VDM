-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/402.luac 

-- params : ...
-- function num : 0
ends_with = function(l_1_0, l_1_1)
  -- function num : 0_0
  do return l_1_1 == "" or l_1_0:sub(-#l_1_1) == l_1_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (string.lower)(l_0_0.command_line)
if (string.find)(l_0_1, "\\microsoft\\windows defender advanced threat protection\\datacollection\\", 1, true) or (string.find)(l_0_1, "\\imecache\\", 1, true) then
  return mp.CLEAN
end
local l_0_2 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if ends_with(l_0_2, "\\powershell.exe") then
  return mp.INFECTED
end
if ends_with(l_0_2, "\\pwsh.exe") then
  return mp.INFECTED
end
if ends_with(l_0_2, "\\powershell_ise.exe") then
  return mp.INFECTED
end
return mp.CLEAN

