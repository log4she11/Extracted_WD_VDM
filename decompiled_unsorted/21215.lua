-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21215.luac 

-- params : ...
-- function num : 0
local l_0_0 = "(.+\\)"
local l_0_1, l_0_2 = nil, nil
if (this_sigattrlog[1]).matched then
  l_0_2 = (string.match)((string.lower)((this_sigattrlog[1]).utf8p1), l_0_0)
else
  if (this_sigattrlog[2]).matched then
    l_0_2 = (string.match)((string.lower)((this_sigattrlog[2]).utf8p1), l_0_0)
  else
    if (this_sigattrlog[3]).matched then
      l_0_2 = (string.match)((string.lower)((this_sigattrlog[3]).utf8p1), l_0_0)
    end
  end
end
if (this_sigattrlog[4]).matched then
  l_0_1 = (string.match)((string.lower)((this_sigattrlog[4]).utf8p1), l_0_0)
else
  if (this_sigattrlog[5]).matched then
    l_0_1 = (string.match)((string.lower)((this_sigattrlog[5]).utf8p1), l_0_0)
  else
    if (this_sigattrlog[6]).matched then
      l_0_1 = (string.match)((string.lower)((this_sigattrlog[6]).utf8p1), l_0_0)
    end
  end
end
if l_0_1 ~= nil and l_0_1 == l_0_2 then
  return mp.INFECTED
end
return mp.CLEAN

