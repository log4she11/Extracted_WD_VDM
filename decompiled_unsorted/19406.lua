-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19406.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp1 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
  local l_0_1, l_0_2 = (string.match)(l_0_0, "\\microsoft\\(%a+)\\(%a+)%.exe")
  if l_0_1 and l_0_2 and (string.sub)(l_0_1, 0, -2) == l_0_2 then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

