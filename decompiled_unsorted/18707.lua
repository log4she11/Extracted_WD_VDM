-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18707.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_regval)(pe.REG_EBX)
local l_0_1 = (pe.get_api_id)(l_0_0)
if l_0_1 == 1269389306 then
  (mp.set_mpattribute)("lua_codepatch_Obfuscator.zg")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 16, "��")
end
return mp.CLEAN

