-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16754.luac 

-- params : ...
-- function num : 0
if not peattributes.isexe then
  return mp.CLEAN
end
if not peattributes.dynmem_uses_access_violation then
  return mp.CLEAN
end
if not peattributes.dynmem_APIcall then
  return mp.CLEAN
end
return mp.INFECTED

