-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/12350.luac 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
if not peattributes.hasexports then
  return mp.CLEAN
end
return mp.INFECTED

