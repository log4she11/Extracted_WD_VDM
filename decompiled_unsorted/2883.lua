-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2883.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 2000 or l_0_0 > 2500 then
  return mp.CLEAN
end
if (mp.bitand)((mp.readu_u32)(headerpage, 1), 91) ~= 91 and (mp.bitand)((mp.readu_u32)(headerpage, 1), 23296) ~= 23296 then
  return mp.CLEAN
end
local l_0_1 = tostring(headerpage)
local l_0_2 = (string.lower)(l_0_1)
if (string.match)((string.sub)(l_0_2, 0, 30), "(%[[/%a%d]+?%])") == nil then
  return mp.CLEAN
end
if (string.match)((string.sub)(l_0_2, 10, 370), "([/%a%d]+%?%?=[/%a%d]+%?)") == nil then
  return mp.CLEAN
end
return mp.INFECTED

