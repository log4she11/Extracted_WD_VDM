-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2247.luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 1) ~= 2019846262 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 5) ~= 1701603686 then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("Lua:VhdxFile")
return mp.CLEAN

