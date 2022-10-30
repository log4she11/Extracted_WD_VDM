-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21942.luac 

-- params : ...
-- function num : 0
if not peattributes.ismsil then
  return mp.CLEAN
end
if not peattributes.hasappendeddata then
  return mp.CLEAN
end
local l_0_0 = (pesecs[pehdr.NumberOfSections]).PointerToRawData + (pesecs[pehdr.NumberOfSections]).SizeOfRawData
local l_0_1 = (mp.getfilesize)() - l_0_0
if l_0_1 < 4096 or l_0_1 > 9437184 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_2 = (mp.readfile)(l_0_0, l_0_1)
if #l_0_2 < 4096 then
  return mp.CLEAN
end
for l_0_6 in (string.gmatch)(l_0_2, "TV[%w+/]+=?=?") do
  if #l_0_6 > 4096 then
    (mp.set_mpattribute)("//MpBase64DecodeLongLines")
    ;
    (mp.vfo_add_buffer)(l_0_6, "[Obfuscator.AN]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    break
  end
end
do
  if (mp.crc32)(-1, l_0_2, 1, 66) == 711333360 then
    return mp.SUSPICIOUS
  end
  if (mp.crc32)(-1, l_0_2, 1, 13) == 3050913556 then
    return mp.SUSPICIOUS
  end
  if (mp.crc32)(-1, l_0_2, 1, 34) == 3919771653 then
    return mp.SUSPICIOUS
  end
  if (mp.crc32)(-1, l_0_2, 1, 25) == 3301795126 then
    return mp.SUSPICIOUS
  end
  if (mp.crc32)(-1, l_0_2, 1, 27) == 1939688586 then
    return mp.SUSPICIOUS
  end
  if (mp.crc32)(-1, l_0_2, 1, 16) == 1008989909 then
    return mp.SUSPICIOUS
  end
  if (mp.crc32)(-1, l_0_2, 1, 13) == 3958531149 then
    return mp.SUSPICIOUS
  end
  return mp.CLEAN
end

