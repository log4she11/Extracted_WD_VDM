-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1560.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 and (string.find)(l_0_0, "\\svchost.exe", -12, true) then
  return mp.CLEAN
end
if isTamperProtectionOn() then
  local l_0_1, l_0_2 = (bm.get_process_relationships)()
  if l_0_1 then
    for l_0_6,l_0_7 in ipairs(l_0_1) do
      if l_0_7.ppid and (mp.bitand)(l_0_7.reason_ex, 1) == 1 then
        (bm.add_related_process)(l_0_7.ppid)
      end
    end
  end
  do
    do
      do return mp.INFECTED end
      return mp.CLEAN
    end
  end
end

