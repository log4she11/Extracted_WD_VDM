-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2375.luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 4095 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 2561) ~= 218959105 then
  return mp.CLEAN
end
if headerpage[2565] ~= 93 then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("Lua:SuspiciousOfficeHeaderS101")
return mp.CLEAN

