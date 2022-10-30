-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/475.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
local l_0_1 = (bm.get_current_process_startup_info)()
local l_0_2 = ((string.lower)(l_0_1.command_line))
local l_0_3 = nil
if l_0_2 and (string.find)(l_0_2, "svchost.exe", 1, true) ~= nil and ((string.find)(l_0_2, "-k netsvcs", 1, true) ~= nil or (string.find)(l_0_2, "-p schedule", 1, true) ~= nil) then
  l_0_3 = 1
end
if l_0_0 and ((string.find)(l_0_0, "taskeng.exe", 1, true) or (string.find)(l_0_0, "taskhostw.exe", 1, true)) then
  l_0_3 = 1
end
if l_0_3 then
  local l_0_4, l_0_5 = (bm.get_process_relationships)()
  local l_0_6 = nil
  for l_0_10,l_0_11 in ipairs(l_0_5) do
    local l_0_12 = (mp.bitand)(l_0_11.reason_ex, 1)
    if l_0_12 == 1 and ((string.find)((string.lower)(l_0_11.image_path), "\\cmd.exe", 1, true) or (string.find)((string.lower)(l_0_11.image_path), "\\powershell.exe", 1, true) or (string.find)((string.lower)(l_0_11.image_path), "\\wscript.exe", 1, true) or (string.find)((string.lower)(l_0_11.image_path), "\\cscript.exe", 1, true) or (string.find)((string.lower)(l_0_11.image_path), "\\mshta.exe", 1, true)) then
      l_0_6 = l_0_11.ppid
      if not IsPidExcluded(l_0_6) then
        TrackPidAndTechniqueBM(l_0_6, "T1059", "commandscriptschdtask")
        TrackPidAndTechniqueBM(l_0_6, "T1053.005", "schtask_target")
        return mp.INFECTED
      end
    end
  end
end
do
  l_0_4 = mp
  l_0_4 = l_0_4.CLEAN
  return l_0_4
end

