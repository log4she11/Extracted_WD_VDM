-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17279.luac 

-- params : ...
-- function num : 0
if peattributes.packed and peattributes.checks_teb_lasterror and peattributes.dynmem_APIcall and peattributes.executes_from_dynamic_memory then
  return mp.SUSPICIOUS
end
return mp.CLEAN

