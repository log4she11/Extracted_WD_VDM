-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4137.luac 

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
  CheckCriticalFilesArchived = function(l_1_0)
  -- function num : 0_0
  do
    local l_1_1 = {}
    -- DECOMPILER ERROR at PC12: No list found for R1 , SetList fails

    -- DECOMPILER ERROR at PC13: Overwrote pending register: R2 in 'AssignReg'

    -- DECOMPILER ERROR at PC14: Overwrote pending register: R3 in 'AssignReg'

    for l_1_5,l_1_6 in (".db[^/%w]")(".sql[^/%w]") do
      -- DECOMPILER ERROR at PC17: Overwrote pending register: R7 in 'AssignReg'

      local l_1_7 = ".pdf[^/%w]"
      -- DECOMPILER ERROR at PC18: Overwrote pending register: R8 in 'AssignReg'

      -- DECOMPILER ERROR at PC20: Overwrote pending register: R9 in 'AssignReg'

      -- DECOMPILER ERROR at PC21: Overwrote pending register: R10 in 'AssignReg'

      for l_1_11 in ((".xls?[^/%w]").gmatch)(".ppt?[^/%w]", ".sh[^/%w]") do
      end
      if l_1_7 > 15 then
        return true
      end
    end
    do return false end
    -- WARNING: undefined locals caused missing assignments!
  end
end

  if ((string.find)(l_0_1, "/bin/zip", -8, true) or (string.find)(l_0_1, "/bin/tar", -8, true) or (string.find)(l_0_1, "/bin/gzip", -9, true) or (string.find)(l_0_1, "/7z", -3, true) or (string.find)(l_0_1, "/usr/bin/file-roller", 1, true) == 1 or (string.find)(l_0_1, "/7zz", -4, true)) and CheckCriticalFilesArchived(l_0_0.command_line) then
    addRelatedProcess()
    reportRelatedBmHits()
    TrackPidAndTechniqueBM("BM", "T1560", "Collection_ArchiveData")
    RemediateProcessTreeForLinux()
    return mp.INFECTED
  end
  return mp.CLEAN
end

