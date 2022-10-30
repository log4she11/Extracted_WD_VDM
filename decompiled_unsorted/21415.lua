-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21415.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.find)(l_0_0, "\\atbroker.exe$") then
  return mp.CLEAN
end
local l_0_1 = (mp.ContextualExpandEnvironmentVariables)("%windir%\\system32\\LogonUI.exe")
local l_0_2 = (sysio.GetProcessFromFileName)(l_0_1)
if l_0_2 == nil or #l_0_2 >= 1 then
  return mp.CLEAN
end
local l_0_3 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\atbroker.exe")
do
  if l_0_3 ~= nil then
    local l_0_4 = (sysio.GetRegValueAsString)(l_0_3, "Debugger")
    if l_0_4 ~= nil and (string.len)(l_0_4) >= 1 then
      if (sysio.IsFileExists)(l_0_4) then
        (mp.ReportLowfi)(l_0_4, 150658937)
      end
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

