-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1761.luac 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[1]).utf8p2
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1, l_0_2 = (string.find)(l_0_0, "d0027073-ea64-42ca-8293-241186e9011f", 1, true)
if l_0_1 == nil or l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = (string.sub)(l_0_0, l_0_2 + 1, -1)
local l_0_4 = 0
local l_0_5 = 1
for l_0_9 in (string.gmatch)(l_0_3, "%S+") do
  if l_0_5 == 1 then
    l_0_4 = tonumber(l_0_9)
  end
  l_0_5 = l_0_5 + 1
end
;
(bm.add_action)("EmsScan", l_0_4)
return mp.INFECTED

