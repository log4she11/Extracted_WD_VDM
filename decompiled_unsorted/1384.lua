-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1384.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.command_line ~= nil then
  local l_0_1 = (string.lower)(l_0_0.command_line)
  local l_0_2 = l_0_1:match("maxsize=([0-9%.]*)%%")
  if l_0_2 ~= nil then
    l_0_2 = tonumber(l_0_2)
    if l_0_2 > 4 then
      return mp.CLEAN
    end
  end
  local l_0_3 = l_0_1:match("maxsize=([0-9%.]*)gb")
  if l_0_3 ~= nil then
    l_0_3 = tonumber(l_0_3)
    if l_0_3 > 1 then
      return mp.CLEAN
    end
  end
  local l_0_4 = l_0_1:match("maxsize=([0-9%.]*)mb")
  if l_0_4 ~= nil then
    l_0_4 = tonumber(l_0_4)
    if l_0_4 > 1000 then
      return mp.CLEAN
    end
  end
  if l_0_1:match("maxsize=unbounded") then
    return mp.CLEAN
  end
  AddResearchData(l_0_0.ppid, true)
  return mp.INFECTED
end
do
  return mp.CLEAN
end

