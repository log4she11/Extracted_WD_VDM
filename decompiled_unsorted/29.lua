-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/29.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() ~= 2048 or mp.HEADERPAGE_SZ < 2048 then
  return mp.CLEAN
end
local l_0_0 = headerpage[8]
if l_0_0 ~= 63 then
  return mp.CLEAN
end
local l_0_1 = headerpage[6]
local l_0_2 = headerpage[7]
if l_0_0 == l_0_2 and l_0_2 == l_0_1 then
  return mp.CLEAN
end
for l_0_6 = 9, 2040, 8 do
  if l_0_0 ~= headerpage[l_0_6 + 7] or l_0_2 ~= headerpage[l_0_6 + 6] then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC56: Unhandled construct in 'MakeBoolean' P1

  if l_0_6 < 32 and l_0_1 ~= headerpage[l_0_6 + 5] then
    return mp.CLEAN
  end
  if l_0_1 - headerpage[l_0_6 + 5] < -1 or l_0_1 - headerpage[l_0_6 + 5] > 1 then
    return mp.CLEAN
  end
end
if (mp.readu_u32)(headerpage, 5) <= (mp.readu_u32)(headerpage, 2045) then
  return mp.CLEAN
end
for l_0_10 = 1, 2016, 8 do
  if (mp.readu_u32)(headerpage, l_0_10) == (mp.readu_u32)(headerpage, l_0_10 + 8) or (mp.readu_u32)(headerpage, l_0_10) == (mp.readu_u32)(headerpage, l_0_10 + 16) or (mp.readu_u32)(headerpage, l_0_10 + 8) == (mp.readu_u32)(headerpage, l_0_10 + 16) then
    return mp.CLEAN
  end
end
return mp.INFECTED

