-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20682.luac 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.hasexports then
  local l_0_0 = (pe.mmap_va)(pehdr.ImageBase + ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_EXPORT]).RVA, 40)
  local l_0_1 = (mp.readu_u32)(l_0_0, 13)
  local l_0_2 = (pe.mmap_va)(pehdr.ImageBase + l_0_1, 32)
  if (string.sub)(l_0_2, 1, 17) == "dll_down_exec.dll" then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

