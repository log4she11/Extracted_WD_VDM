-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20113.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[2]).matched and (this_sigattrlog[3]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
  local l_0_1 = (string.lower)((this_sigattrlog[2]).utf8p2)
  local l_0_2 = (string.lower)((this_sigattrlog[3]).utf8p2)
  if l_0_0 ~= nil and l_0_1 ~= nil and l_0_2 ~= nil and (string.find)(l_0_1, l_0_0, 1, true) and (string.find)(l_0_2, l_0_0, 1, true) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

