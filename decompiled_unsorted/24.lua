-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/24.luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 128 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 1) ~= 67324752 then
  return mp.CLEAN
end
if (mp.readu_u16)(headerpage, 9) ~= 0 then
  return mp.CLEAN
end
if (mp.readu_u16)(headerpage, 27) ~= 12 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 31) ~= 1701079414 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 35) ~= 1684549231 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 39) ~= 1885960750 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 101) ~= 1701079414 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 105) ~= 1684549231 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 109) ~= 1702389038 then
  return mp.CLEAN
end
return mp.INFECTED

