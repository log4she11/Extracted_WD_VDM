-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20662.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr, 32)
local l_0_1 = (mp.readu_u32)(l_0_0, 23)
local l_0_2 = (mp.readu_u32)(l_0_0, 17)
local l_0_3 = (pe.get_api_id)((mp.readu_u32)((pe.mmap_va)(l_0_1, 4), 1))
if l_0_3 ~= 946125367 then
  return mp.CLEAN
end
local l_0_4 = (pe.mmap_va)(l_0_2, 32)
local l_0_5 = (string.find)(l_0_4, "c\000:\000\\\000m\000y\000a\000p\000p\000", 1, true)
if not l_0_5 then
  return mp.CLEAN
end
;
(pe.mmap_patch_va)(pevars.sigaddr + 30, "��")
return mp.INFECTED

