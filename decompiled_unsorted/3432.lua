-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3432.luac 

-- params : ...
-- function num : 0
Infrastructure_ScanBedepClsid = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  if l_1_0 then
    local l_1_2 = l_1_0 .. "Software\\Classes\\Drive\\ShellEx\\FolderExtensions"
    local l_1_3 = (sysio.RegOpenKey)(l_1_2)
    if l_1_3 then
      local l_1_4 = (sysio.RegEnumKeys)(l_1_3)
      if l_1_4 then
        for l_1_8,l_1_9 in ipairs(l_1_4) do
          if (string.match)(l_1_9, "^{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}$") then
            local l_1_10 = (sysio.RegOpenKey)(l_1_2 .. "\\" .. l_1_9)
            if l_1_10 then
              local l_1_11 = (sysio.GetRegValueAsDword)(l_1_10, "DriveMask")
              if l_1_11 and l_1_11 == 4294967295 then
                (table.insert)(l_1_1, l_1_9)
              end
            end
          end
        end
      end
    end
  end
  do
    return l_1_1
  end
end

Infrastructure_ScanBedepFilePathFromReg = function(l_2_0, l_2_1)
  -- function num : 0_1
  if l_2_0 and l_2_1 then
    local l_2_2 = (sysio.RegOpenKey)(l_2_0 .. "Software\\Classes\\CLSID\\" .. l_2_1 .. "\\InprocServer32")
    if l_2_2 then
      local l_2_3 = (sysio.GetRegValueAsString)(l_2_2, "")
      if (sysio.IsFileExists)(l_2_3) then
        (MpDetection.ScanResource)("file://" .. l_2_3)
        ;
        (MpCommon.ReportLowfi)(l_2_3, 2613789282)
      end
    end
  end
end

Infrastructure_ScanBedep = function(l_3_0)
  -- function num : 0_2
  local l_3_1 = "HKCU"
  local l_3_2 = {}
  if l_3_0 then
    local l_3_3 = (sysio.RegExpandUserKey)(l_3_1)
    for l_3_7,l_3_8 in pairs(l_3_3) do
      l_3_2 = Infrastructure_ScanBedepClsid(l_3_8)
      for l_3_12,l_3_13 in ipairs(l_3_2) do
        Infrastructure_ScanBedepFilePathFromReg(l_3_8, l_3_13)
      end
    end
  else
    do
      l_3_2 = Infrastructure_ScanBedepClsid(l_3_1 .. "\\")
      for l_3_17,l_3_18 in ipairs(l_3_2) do
        Infrastructure_ScanBedepFilePathFromReg(l_3_1 .. "\\", l_3_18)
      end
    end
  end
end


