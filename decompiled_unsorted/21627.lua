-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21627.luac 

-- params : ...
-- function num : 0
checkPossibleEncoded = function(l_1_0, l_1_1, l_1_2)
  -- function num : 0_0
  for l_1_6 in l_1_0:gmatch(l_1_1) do
    if l_1_2 <= (string.len)(l_1_6) then
      return true
    end
  end
  return false
end

local l_0_0 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_0 = (this_sigattrlog[1]).utf8p2
else
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    l_0_0 = (this_sigattrlog[2]).utf8p2
  end
end
l_0_0 = (string.lower)(l_0_0)
if (string.len)(l_0_0) < 2048 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "%.ps1") then
  return mp.CLEAN
end
do
  if checkPossibleEncoded(l_0_0, "%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w+", 2048) then
    local l_0_1, l_0_2 = (string.match)(l_0_0, " ([-/]wi?n?d?o?w?s?s?t?y?l?e?)%s+(%w+)%s")
    if l_0_2 == "1" or (string.find)(l_0_2, "^hi") then
      (bm.add_action)("EmsScan", 5000)
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

