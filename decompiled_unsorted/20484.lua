-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20484.luac 

-- params : ...
-- function num : 0
if not peattributes.isvbnative and not peattributes.isvbpcode then
  return mp.CLEAN
end
if (hstrlog[1]).matched then
  local l_0_0 = (hstrlog[1]).VA
  ;
  (mp.readprotection)(false)
  local l_0_1 = (pe.mmap_va)(l_0_0 + 62, 4)
  if (string.byte)(l_0_1, 1) == (string.byte)(l_0_1, 4) and (string.byte)(l_0_1, 2) == (string.byte)(l_0_1, 3) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

