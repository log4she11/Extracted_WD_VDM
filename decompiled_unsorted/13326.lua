-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/13326.luac 

-- params : ...
-- function num : 0
if not peattributes.isexe then
  return mp.CLEAN
end
if not peattributes.suspicious_timestamp then
  return mp.CLEAN
end
return mp.INFECTED

