-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21464.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr, 32)
local l_0_1 = (string.byte)(l_0_0, 13) + (string.byte)(l_0_0, 14) * 256 + (string.byte)(l_0_0, 15) * 65536 + (string.byte)(l_0_0, 16) * 16777216
if l_0_1 < 53248 then
  return mp.INFECTED
end
local l_0_2 = (string.byte)(l_0_0, 18)
if l_0_2 < 48 then
  return mp.INFECTED
end
local l_0_3 = pevars.sigaddr + 18 + l_0_2
l_0_0 = (pe.mmap_va)(l_0_3 - 1, 4)
local l_0_4 = (string.byte)(l_0_0, 1)
if l_0_4 < 128 then
  return mp.INFECTED
end
l_0_4 = (mp.bitor)(l_0_4, 4294967040)
local l_0_5 = (mp.bitand)(l_0_3 + l_0_4, 4294967295)
if l_0_5 ~= pevars.sigaddr then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("lua_codepatch_fakesysdef_1")
;
(pe.mmap_patch_va)(pevars.sigaddr + 12, "\000\000\000\000")
return mp.INFECTED

