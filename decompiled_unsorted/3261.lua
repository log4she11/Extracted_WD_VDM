-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3261.luac 

-- params : ...
-- function num : 0
if (mp.GetResmgrBasePlugin)() ~= "regkeyvalue" then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
if l_0_0 == nil then
  return mp.CLEAN
end
if (string.find)(l_0_0, "hklm\\system\\currentcontrolset\\control\\secureboot\\state", 1, true) == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)(tostring(headerpage))
if (string.find)(l_0_1, "{68baf0cf-8e96-4cd9-8f02-5a162dc86f12}", 1, true) ~= nil or (string.find)(l_0_1, "{e15ae303-8ae6-4c44-847a-152c2019fe85}", 1, true) ~= nil or (string.find)(l_0_1, "{8d70e18f-c94b-4dde-8900-569f4a3b370a}", 1, true) ~= nil or (string.find)(l_0_1, "{4217eb99-f9d8-4867-ad00-4a36563ebe23}", 1, true) ~= nil or (string.find)(l_0_1, "{1b9a9f0f-cbf7-4742-93a1-2fe3ffaeff98}", 1, true) ~= nil or (string.find)(l_0_1, "{6a093464-7cec-4f19-adb0-a47228778ec3}", 1, true) ~= nil or (string.find)(l_0_1, "{9ed089a1-8e30-420a-9285-4427ace66ba5}", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

