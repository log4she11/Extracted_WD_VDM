-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3722.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[5]).matched and (this_sigattrlog[6]).matched and (this_sigattrlog[7]).matched and (this_sigattrlog[8]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[5]).utf8p1)
  local l_0_1 = (string.lower)((this_sigattrlog[6]).utf8p1)
  local l_0_2 = (string.lower)((this_sigattrlog[7]).utf8p1)
  local l_0_3 = (string.lower)((this_sigattrlog[8]).utf8p1)
  local l_0_4, l_0_5 = (bm.get_process_relationships)()
  for l_0_9,l_0_10 in ipairs(l_0_5) do
    local l_0_11 = (string.lower)(l_0_10.cmd_line)
    if (string.find)(l_0_11, l_0_0, 1, true) and (string.find)(l_0_11, l_0_1, 1, true) and (string.find)(l_0_11, l_0_2, 1, true) and (string.find)(l_0_11, l_0_3, 1, true) then
      return mp.INFECTED
    end
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.CLEAN
  return l_0_0
end

