-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19959.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("lua_codepatch_Obfuscator_XQ") then
  return mp.CLEAN
end
if (pe.get_regval)(pe.REG_EBX) ~= 2011627520 then
  return mp.CLEAN
end
;
(pe.mmap_patch_va)(pevars.sigaddr + 2, "d\000\000\000")
;
(mp.set_mpattribute)("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED

