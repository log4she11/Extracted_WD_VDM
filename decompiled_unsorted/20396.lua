-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20396.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.find)((pe.mmap_va)(pevars.sigaddr, 20), "|", 1, true) - 1
if (string.find)((pe.mmap_va)(pevars.sigaddr, 80), "t\005", 1, true) == nil then
  local l_0_1 = (string.find)((pe.mmap_va)(pevars.sigaddr, 80), "u\002", 1, true) - 2 - l_0_0 - 1
  local l_0_2 = (string.format)("\235%s", (string.char)(l_0_1))
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + l_0_0, l_0_2)
  return mp.INFECTED
end

