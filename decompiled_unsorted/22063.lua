-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22063.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)((pe.get_regval)(pe.REG_EBP) - 4, 16)
local l_0_1 = (mp.readu_u32)(l_0_0, 1)
if l_0_1 <= 0 or l_0_1 > 1048576 then
  return mp.INFECTED
end
l_0_0 = (pe.mmap_va)(pevars.sigaddr, 256)
local l_0_2 = (mp.readu_u32)(l_0_0, 117)
local l_0_3 = (mp.readu_u32)((pe.mmap_va)(l_0_2, 4), 1)
local l_0_4 = (mp.readu_u32)(l_0_0, 35)
local l_0_5 = (pe.mmap_va)(l_0_4, 256)
local l_0_6 = (mp.readu_u32)(l_0_0, 45)
local l_0_7 = (mp.readu_u32)((pe.mmap_va)(l_0_6, 4), 1)
local l_0_8 = "MZ\144\000\003\000\000\000\004\000\000\000\255\255\000\000\184\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\192\000\000\000\014\031\186\014\000\180\t\205!\184\001L\205![DYNEXE] A HELPER STUB TO EMULATE WIN32 MALWARES.$-----------------------------------------------------------jirehPE\000\000L\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\224\000\002\001\v\001\n\n\004\000\000\000\000\000\000\000\000\000\000\000\224\001\000\000\224\001\000\000\228\001\000\000\000\000@\000\001\000\000\000\001\000\000\000\005\000\001\000\000\000\000\000\005\000\001\000\000\000\000\000\224\001\016\000\224\001\000\000\000\000\000\000\003\000@\133\000\000\016\000\000\016\000\000\000\000\016\000\000\016\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000.text\000\000\000\000\000\016\000\224\001\000\000\000\000\000\000\224\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\224\000\000\224"
local l_0_9 = "\190\000\000\000\000\189\001\000\000\000��@%\255\000\000\000�ŉN\002@\000\015��\003\rJ\002@\000��\255\000\000\000��N\002@\000��N\002@\000\137\rJ\002@\000��N\002@\000\015��N\002@\000\015��\001с\225\255\000\000\000\015��N\002@\000�N\003@\0000\0280��\001u��\000\000\000\000"
local l_0_10 = (pe.mmap_va)(l_0_3, l_0_1)
local l_0_11 = l_0_8 .. l_0_9 .. l_0_5 .. l_0_10
;
(mp.writeu_u32)(l_0_11, (string.len)(l_0_8) + 2, l_0_1)
;
(mp.writeu_u32)(l_0_11, (string.len)(l_0_8) + 107, l_0_7)
;
(mp.vfo_add_buffer)(l_0_11, "[VUNDO_DYNEXE]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED

