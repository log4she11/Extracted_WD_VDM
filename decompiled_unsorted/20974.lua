-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20974.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)((pe.get_regval)(pe.REG_EBP) - 32, 4)
local l_0_1 = (mp.readu_u32)(l_0_0, 1)
local l_0_2 = (pe.mmap_va)(pevars.sigaddr + 47, 4)
local l_0_3 = (mp.readu_u32)(l_0_2, 1)
local l_0_4, l_0_5, l_0_6, l_0_7 = (mp.bsplit)(l_0_1, 8)
local l_0_8, l_0_9, l_0_10, l_0_11 = (mp.bsplit)(l_0_3, 8)
local l_0_12 = "\186" .. (string.char)(l_0_4, l_0_5, l_0_6, l_0_7) .. "\138\0202\128\250+u\004\178>\235 \128\250/u\004\178?\235\023\128\2509\127\005\128\2340\235\r\128�Z\127\005\128\2347\235\003\128\234=\015�҉�" .. (string.char)(l_0_8, l_0_9, l_0_10, l_0_11) .. "\128\250\000��"
;
(pe.mmap_patch_va)(pevars.sigaddr + 9, l_0_12)
return mp.INFECTED

