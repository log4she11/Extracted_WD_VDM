-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21042.luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched and (mp.get_mpattribute)("MpHasExpensiveLoop") then
  local l_0_0 = (pe.foffset_va)((hstrlog[1]).VA)
  ;
  (mp.readprotection)(false)
  local l_0_1 = (mp.readfile)(0, (mp.getfilesize)())
  ;
  (mp.writeu_u8)(l_0_1, l_0_0 + 12, 132)
  ;
  (mp.writeu_u32)(l_0_1, l_0_0 + 20, 696)
  ;
  (mp.writeu_u8)(l_0_1, l_0_0 + 24, 0)
  ;
  (mp.vfo_add_buffer)(l_0_1, "[Obfuscator.ALC]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
do
  return mp.INFECTED
end

