-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4109.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (bm.get_imagepath)()
if l_0_1 == nil or l_0_1 == "" or l_0_0 == nil or l_0_0.command_line == nil then
  return mp.CLEAN
end
do
  if (string.find)(l_0_1, "/bin/tar", -8, true) then
    local l_0_2 = 0
    for l_0_6 in (string.gmatch)(l_0_0.command_line, "/var/log/recap") do
      l_0_2 = l_0_2 + 1
    end
    if l_0_2 > 15 then
      return mp.CLEAN
    end
  end
  if (string.find)(l_0_1, "/bin/zip", -8, true) or (string.find)(l_0_1, "/bin/tar", -8, true) or (string.find)(l_0_1, "/bin/gzip", -9, true) or (string.find)(l_0_1, "/7z", -3, true) or (string.find)(l_0_1, "/usr/bin/file-roller", 1, true) == 1 or (string.find)(l_0_1, "/7zz", -4, true) then
    addRelatedProcess()
    reportRelatedBmHits()
    TrackPidAndTechniqueBM("BM", "T1059", "SuspiciousCommandline")
    RemediateProcessTreeForLinux()
    return mp.INFECTED
  end
  return mp.CLEAN
end

