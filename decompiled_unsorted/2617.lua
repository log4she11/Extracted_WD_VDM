-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2617.luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
if (mp.readu_u16)(headerpage, 10) == 65512 and (mp.readu_u32)(headerpage, 11) == 4294967295 and (mp.readu_u16)(headerpage, 4) == 47561 and (headerpage[3] == 41 or headerpage[3] == 43 or headerpage[3] == 51) then
  (mp.set_mpattribute)("MpNonPIIFileType")
  return mp.INFECTED
end
return mp.CLEAN

