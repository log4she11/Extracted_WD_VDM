-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3232.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if mp.HEADERPAGE_SZ < 4096 or l_0_0 < 4096 or l_0_0 > 16777216 then
  return mp.CLEAN
end
if (mp.readu_u16)(headerpage, 1) == 23117 then
  return mp.CLEAN
end
local l_0_1 = (mp.readu_u32)(headerpage, 57)
if l_0_1 == 0 then
  return mp.CLEAN
end
if (mp.bitand)((mp.bitxor)((mp.readu_u32)(headerpage, 1), l_0_1), 65535) ~= 23117 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_2 = (mp.readfile)(0, 4096)
for l_0_6 = 1, 4096, 4 do
  (mp.writeu_u32)(l_0_2, l_0_6, (mp.bitxor)((mp.readu_u32)(l_0_2, l_0_6), l_0_1))
end
local l_0_7 = (mp.readu_u32)(l_0_2, 61) + 1
if l_0_7 > 4096 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_2, l_0_7) ~= 17744 then
  return mp.CLEAN
end
local l_0_8 = (mp.readu_u32)(l_0_2, l_0_7 + 28)
if l_0_8 ~= 2560 then
  return mp.CLEAN
end
local l_0_9 = (mp.readu_u32)(l_0_2, l_0_7 + 84)
if l_0_9 ~= 1024 then
  return mp.CLEAN
end
if (mp.crc32)(-1, l_0_2, l_0_9 + 1, 32) ~= 3735068208 then
  return mp.CLEAN
end
;
(mp.vfo_add_buffer)(l_0_2, "[CeeInject.gen!DZ]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

