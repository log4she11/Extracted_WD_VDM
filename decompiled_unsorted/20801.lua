-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20801.luac 

-- params : ...
-- function num : 0
local l_0_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\utilman.exe")
if l_0_0 ~= nil then
  local l_0_1 = (sysio.GetRegValueAsString)(l_0_0, "Debugger")
  if l_0_1 ~= nil and (string.len)(l_0_1) >= 3 then
    local l_0_2 = (string.lower)(l_0_1)
    if (string.find)(l_0_2, "cmd", 1, true) or (string.find)(l_0_2, "msconfig", 1, true) or (string.find)(l_0_2, "taskmgr", 1, true) then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

