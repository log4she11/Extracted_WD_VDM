-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20122.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (this_sigattrlog[1]).utf8p2
  if l_0_0 ~= nil and (string.len)(l_0_0) > 9 then
    local l_0_1 = (string.lower)(l_0_0)
    if ((string.find)(l_0_1, "procdump", 1, true) or (string.find)(l_0_1, "accepteula", 1, true)) and (string.match)(l_0_1, "[%-/]m[acdkmp]") then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

