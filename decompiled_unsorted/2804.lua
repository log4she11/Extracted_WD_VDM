-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2804.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 16385 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(l_0_0 - 12288, 4096)
local l_0_2 = tostring(l_0_1)
if (string.find)(l_0_2, "Пользователь Win", 1, true) ~= nil then
  (mp.set_mpattribute)("Lua:SuspiciousOfficeFileInfS101")
  return mp.CLEAN
end
if (string.find)(l_0_2, "Micha\000\000\000\030\000\000\000\016\000\000\000Micr", 1, true) ~= nil then
  (mp.set_mpattribute)("Lua:SuspiciousOfficeFileInfS102")
  return mp.CLEAN
end
return mp.CLEAN

