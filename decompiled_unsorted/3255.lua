-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3255.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < mp.FOOTERPAGE_SZ * 3 then
  return mp.CLEAN
end
if l_0_0 > 2097152 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
local l_0_2, l_0_3, l_0_4 = (string.find)(l_0_1, "= ?\"(.-)\"")
if #l_0_4 < mp.FOOTERPAGE_SZ then
  return mp.CLEAN
end
local l_0_5, l_0_6, l_0_7 = (string.find)(l_0_1, "= ?\"(.-)\"", l_0_3)
if #l_0_7 < 1 or #l_0_4 <= #l_0_7 then
  return mp.CLEAN
end
local l_0_8, l_0_9 = (string.gsub)(l_0_7, "([%.%$%%%^%+%-%*%?%(%)%{%}%[%]])", "%%%1")
if l_0_4:match(l_0_8) == nil then
  return mp.CLEAN
end
local l_0_10, l_0_11, l_0_12 = (string.find)(l_0_1, "= ?\"(.-)\"", l_0_6)
if #l_0_12 < 1 or #l_0_4 <= #l_0_12 then
  return mp.CLEAN
end
local l_0_13, l_0_14, l_0_15 = (string.find)(l_0_1, "%-%s-0-([1-9]%d-)%)%s-,", l_0_11)
local l_0_16 = tonumber(l_0_15, 10) + (string.byte)(l_0_12, 1)
;
(mp.vfo_add_buffer)(fastDec2BinWithKey(l_0_4, "(%d-)" .. l_0_8, l_0_16, function(l_1_0, l_1_1)
  -- function num : 0_0
  return l_1_0 + l_1_1
end
), "[JXSC]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

