-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3369.luac 

-- params : ...
-- function num : 0
if (Remediation.Threat).Active then
  local l_0_0 = (sysio.RegOpenKey)("HKLM\\SYSTEM\\CurrentControlSet\\Control\\Lsa")
  if l_0_0 then
    (sysio.SetRegValueAsDword)(l_0_0, "Limitblankpassworduse", 1)
  end
  local l_0_1, l_0_2, l_0_3 = nil, nil, nil
  local l_0_4 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run")
  for l_0_8,l_0_9 in pairs(l_0_4) do
    l_0_2 = (sysio.RegOpenKey)(l_0_9)
    if l_0_2 then
      l_0_1 = (sysio.RegEnumValues)(l_0_2)
      for l_0_13,l_0_14 in pairs(l_0_1) do
        if l_0_14 then
          l_0_3 = (sysio.GetRegValueAsString)(l_0_2, l_0_14)
          if l_0_3 then
            local l_0_15 = nil
            l_0_15 = (string.match)((string.lower)(l_0_3), "appdata\\local\\%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%.exe$")
            if l_0_15 ~= nil then
              (sysio.DeleteRegValue)(l_0_2, l_0_14)
              if (sysio.IsFileExists)(l_0_15) then
                (MpCommon.ReportLowfi)(l_0_15, 1512152387)
                ;
                (sysio.DeleteFile)(l_0_15)
              end
            end
          end
        end
      end
    end
  end
  local l_0_16, l_0_17 = nil, nil
  l_0_16 = (sysio.GetCommandLineFromService)("googleupdate")
  l_0_17 = (l_0_16:lower()):match("\\(%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%.exe)$")
  if l_0_17 ~= nil and (((MpCommon.ExpandEnvironmentVariables)("%windir%")):lower()):gsub("\\\\%?\\", "") .. "\\" .. l_0_17 == l_0_16:lower() then
    (sysio.DeleteService)("googleupdate")
    if (sysio.IsFileExists)(l_0_16) then
      (MpCommon.ReportLowfi)(l_0_16, 889980315)
      ;
      (sysio.DeleteFile)(l_0_16)
    end
  end
end

