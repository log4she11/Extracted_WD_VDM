-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18591.luac 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.enable_vmm_grow and (mp.get_mpattribute)("MpHasExpensiveLoop") and peattributes.dynmem_APIcall and peattributes.suspicious_linker_version then
  return mp.INFECTED
end
return mp.CLEAN

