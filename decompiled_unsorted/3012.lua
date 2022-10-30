-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3012.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 4096 or l_0_0 > 16777216 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 1) ~= 3203386062 or (mp.readu_u32)(headerpage, 5) ~= 1 then
  return mp.CLEAN
end
if (mp.crc32)(-1, headerpage, 13, 145) ~= 1098233996 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
local l_0_2 = 1
for l_0_6 in (string.gmatch)(l_0_1, "TV[%w+/]+=?=?") do
  if l_0_2 > 5 then
    break
  end
  if #l_0_6 > 4096 and #l_0_6 < 16777216 then
    (mp.set_mpattribute)("//MpBase64DecodeLongLines")
    ;
    (mp.vfo_add_buffer)(l_0_6, (string.format)("[b64netrsrc-%x]", l_0_2), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    l_0_2 = l_0_2 + 1
  end
end
do
  return mp.CLEAN
end

