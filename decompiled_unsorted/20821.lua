-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20821.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 then
  if (string.find)(l_0_0, "\\python", 1, true) then
    return mp.INFECTED
  end
  if (string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "\\microsoft vs code\\", 1, true) or (string.find)(l_0_0, "microsoft.watson", 1, true) or (string.find)(l_0_0, "mpsigstub.exe", 1, true) or (string.find)(l_0_0, "virtualboxvm.exe", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

