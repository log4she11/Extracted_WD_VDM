-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2832.luac 

-- params : ...
-- function num : 0
local l_0_0 = (sysio.RegOpenKey)("HKLM\\Software\\Classes\\CLSID\\{AB8902B4-09CA-4bb6-B78D-A8F59079A8D5}\\LocalServer32\\\001")
if l_0_0 then
  (sysio.DeleteRegKey)(l_0_0, nil)
end
l_0_0 = (sysio.RegOpenKey)("HKCU\\Software\\Classes\\CLSID\\{AB8902B4-09CA-4bb6-B78D-A8F59079A8D5}\\LocalServer32\\\001")
if l_0_0 then
  (sysio.DeleteRegKey)(l_0_0, nil)
end
l_0_0 = (sysio.RegOpenKey)("HKLM\\Software\\Classes\\CLSID\\{73E709EA-5D93-4B2E-BBB0-99B7938DA9E4}\\LocalServer32\\\001")
if l_0_0 then
  (sysio.DeleteRegKey)(l_0_0, nil)
end
l_0_0 = (sysio.RegOpenKey)("HKCU\\Software\\Classes\\CLSID\\{73E709EA-5D93-4B2E-BBB0-99B7938DA9E4}\\LocalServer32\\\001")
if l_0_0 then
  (sysio.DeleteRegKey)(l_0_0, nil)
end

