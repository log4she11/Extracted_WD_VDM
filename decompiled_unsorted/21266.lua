-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21266.luac 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("lua_codepatch_tibs_18")
local l_0_0 = (pe.mmap_va)((pe.get_regval)(pe.REG_EBP) - 4, 4)
local l_0_1 = (mp.readu_u32)(l_0_0, 1)
l_0_0 = (pe.mmap_va)(pevars.sigaddr, 40)
local l_0_2 = (mp.readu_u32)(l_0_0, 6)
local l_0_3 = (mp.readu_u32)(l_0_0, 15)
local l_0_4 = (string.byte)(l_0_0, 21)
local l_0_5 = (mp.readu_u32)(l_0_0, 25)
local l_0_6 = (mp.readu_u32)(l_0_0, 36)
local l_0_7 = (pe.get_regval)(pe.REG_EDX)
local l_0_8 = (mp.ror32)((mp.ror32)(l_0_7, 1) + l_0_3, l_0_4) - (mp.bitxor)(l_0_6, l_0_5) + l_0_1 - l_0_2
;
(pe.set_regval)(pe.REG_EBX, l_0_8)
return mp.INFECTED

