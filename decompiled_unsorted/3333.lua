-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3333.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
if l_0_0 == nil or (string.len)(l_0_0) < 22 or (string.find)(l_0_0, "\\appdata\\local\\temp\\", 1, true) == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
if l_0_1 == nil or (string.len)(l_0_1) < 5 then
  return mp.CLEAN
end
local l_0_2 = (string.sub)(l_0_1, -3)
if l_0_2 == nil or (string.len)(l_0_2) < 3 then
  return mp.CLEAN
end
local l_0_3 = {}
l_0_3[".js"] = true
l_0_3.jse = true
l_0_3.vbs = true
l_0_3.vbe = true
l_0_3.wsf = true
l_0_3.hta = true
if l_0_3[l_0_2] ~= true then
  return mp.CLEAN
end
local l_0_4 = (string.match)(l_0_0, "\\appdata\\local\\temp\\(.+)")
if l_0_4 == nil or (string.len)(l_0_4) < 4 then
  return mp.CLEAN
end
if (string.find)(l_0_4, "\\", 1, true) ~= nil then
  return mp.CLEAN
end
local l_0_5 = {}
l_0_5.zip = "temp%x_.+%.zip"
l_0_5.rar = "rar$.+"
l_0_5["7zip"] = "7z.+"
l_0_5.wzip = "wz.+"
for l_0_9,l_0_10 in pairs(l_0_5) do
  if (string.match)(l_0_4, l_0_10) ~= nil then
    if l_0_2 == "hta" then
      (mp.set_mpattribute)("Lua:MshtaExtractedFileInZip.A!" .. l_0_9)
    else
      ;
      (mp.set_mpattribute)("Lua:ScriptExtractedFileInZip.A!" .. l_0_9)
    end
    return mp.INFECTED
  end
end
return mp.CLEAN

