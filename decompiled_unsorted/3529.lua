-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3529.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 126976 or l_0_0 > 655360 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = tostring((mp.readfile)(l_0_0 - 4096, 3840))
if l_0_1 == nil then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
if (string.find)(l_0_1, "name=\"vbaproject\"", 1, true) == nil or (string.find)(l_0_1, "excel4intlmacrosheets", 1, true) == nil then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("Lua:vbaproject.s001")
local l_0_2 = tostring((mp.readfile)(l_0_0 - 13568, 12288))
if l_0_2 == nil then
  return mp.CLEAN
end
;
(mp.vfo_add_buffer)(l_0_2, "[Testing]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
l_0_2 = (string.lower)(l_0_2)
if (string.find)(l_0_2, "regsvr32", 1, true) ~= nil then
  (mp.set_mpattribute)("Lua:ExcelSusp.Regsvr32.S001")
  if (string.find)(l_0_2, "regsvr32 -s", 1, true) ~= nil or (string.find)(l_0_2, "regsvr32.exe -s", 1, true) ~= nil then
    (mp.set_mpattribute)("Lua:ExcelSusp.Regsvr32Si.S001")
  end
end
if (string.find)(l_0_2, "celod.wac", 1, true) ~= nil then
  (mp.set_mpattribute)("Lua:ExcelQakbotDrop.S001")
  if (string.find)(l_0_2, "..\\celod.wac", 1, true) ~= nil then
    (mp.set_mpattribute)("Lua:ExcelQakbotDrop.S002")
  end
end
if (string.find)(l_0_2, "caption         =   \"urldownloadtofilea\"", 1, true) ~= nil then
  (mp.set_mpattribute)("Lua:ExcelSusp.Urld.S001")
end
if (string.find)(l_0_2, "c:\\users\\test\\appdata\\local\\temp\\vbe\\", 1, true) ~= nil or (string.find)(l_0_2, "c:\\users\\user\\appdata\\local\\temp\\vbe\\", 1, true) ~= nil or (string.find)(l_0_2, "c:\\users\\doc\\appdata\\local\\temp\\vbe\\", 1, true) ~= nil then
  (mp.set_mpattribute)("Lua:ExcelSusp.User.S001")
end
if (string.find)(l_0_2, "/190.", 1, true) ~= nil or (string.find)(l_0_2, "/188.", 1, true) ~= nil or (string.find)(l_0_2, "/185.", 1, true) ~= nil or (string.find)(l_0_2, "/94.", 1, true) ~= nil or (string.find)(l_0_2, "/5.", 1, true) ~= nil or (string.find)(l_0_2, "/84.", 1, true) ~= nil or (string.find)(l_0_2, "/194.", 1, true) ~= nil or (string.find)(l_0_2, "/23.", 1, true) ~= nil or (string.find)(l_0_2, "/101.", 1, true) ~= nil then
  (mp.set_mpattribute)("Lua:ExcelSuspicious.Ip.S001")
end
return mp.CLEAN

