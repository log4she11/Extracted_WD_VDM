-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3242.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 131072 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = tostring((mp.readfile)(0, l_0_0))
local l_0_2 = (string.match)(l_0_1, "base64.b64decode%(b\'([%w%+/]+=-)\'%)")
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = (string.match)(l_0_1, "itertools.cycle%(b\'(%w+)\'%)")
if l_0_3 == nil then
  return mp.CLEAN
end
local l_0_4 = (MpCommon.Base64Decode)(l_0_2)
if l_0_4 == nil then
  return mp.CLEAN
end
local l_0_5 = (string.len)(l_0_4) / (string.len)(l_0_3) / 2
local l_0_6 = (l_0_5 + l_0_5 / 2) * (string.len)(l_0_3)
l_0_4 = (string.sub)(l_0_4, l_0_6 + 1, (string.len)(l_0_4))
local l_0_7 = ""
local l_0_8 = 1
local l_0_9 = 1
local l_0_10 = 2500
for l_0_14 in l_0_4:gmatch(".") do
  if l_0_3:len() < l_0_8 then
    l_0_8 = 1
  end
  l_0_7 = l_0_7 .. (string.char)((mp.bitxor)(l_0_14:byte(), (l_0_3:sub(l_0_8, l_0_8)):byte()))
  l_0_8 = l_0_8 + 1
  l_0_9 = l_0_9 + 1
  if l_0_10 < l_0_9 then
    break
  end
end
do
  ;
  (mp.vfo_add_buffer)(l_0_7, "(MedDecrypt)", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  return mp.INFECTED
end

