-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19801.luac 

-- params : ...
-- function num : 0
if peattributes.hasexports ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 11 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)(544, 6)
if (mp.crc32)(-1, l_0_0, 1, 6) ~= 3246015244 then
  return mp.CLEAN
end
return mp.INFECTED

