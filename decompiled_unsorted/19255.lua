-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19255.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 ~= nil then
  if (string.find)(l_0_0, "\\svchost.exe", 1, true) or (string.find)(l_0_0, "\\rubyw.exe", 1, true) or (string.find)(l_0_0, "\\sccm_wmi_repair.exe", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

