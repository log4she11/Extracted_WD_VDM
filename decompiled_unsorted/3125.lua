-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3125.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("SCPT:Worm:VBS/Jenxcus!CryptRepsRev") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 50000 or l_0_0 > 200000 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
local l_0_2 = (string.match)(l_0_1, "[\']([^0-9]-)%s")
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3, l_0_4 = nil, nil
for l_0_8 = 0, 9 do
  l_0_4 = (string.format)("[Rr][Ee][Pp][Ll][Aa][Cc][Ee]%%s-%%(%%a-%%s-,%%s-\"([^0-9]-)\"%%s-,%%s-\"[%d]\"", l_0_8)
  l_0_3 = (string.match)(l_0_1, l_0_4)
  if l_0_3 == nil then
    return mp.CLEAN
  end
  l_0_2 = l_0_2:gsub(l_0_3, l_0_8)
end
l_0_2 = l_0_2:reverse()
;
(mp.vfo_add_buffer)(fastHex2Bin(l_0_2, "(..)"), "[CrypterRepsRev]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

