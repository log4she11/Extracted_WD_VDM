-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17116.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_isdll") and pehdr.NumberOfSections == 5 and peattributes.hasexports == true then
  return mp.INFECTED
end
return mp.CLEAN

