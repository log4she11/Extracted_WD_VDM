-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4022.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 == nil or l_0_0.command_line == nil or l_0_0.command_line == "" then
  return mp.CLEAN
end
local l_0_1 = l_0_0.command_line
if (string.find)(l_0_1, "/elfsigner.py", 1, true) or (string.find)(l_0_1, "--no_disclaimer", 1, true) then
  return mp.CLEAN
end
local l_0_2 = 50000000
if l_0_2 < (bm.GetSignatureMatchDuration)() then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1486", "Impact_Encryption")
return mp.INFECTED

