-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3044.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("TARG:Worm:VBS/Jenxcus!Crypt1") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 60000 or l_0_0 > 500000 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
l_0_1 = (string.lower)(l_0_1)
local l_0_2 = l_0_1:match("\'execute%(%p%(?(.-)%)?%)\r\n")
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = function(l_1_0, l_1_1)
  -- function num : 0_0
  return l_1_0 - l_1_1
end

local l_0_4 = l_0_2:gsub("(%d%d?%d?%d?)%-%s(%d%d?%d?%d?)[^%d]?%)?%s?%p?%s?%p?", l_0_3)
;
(mp.vfo_add_buffer)(fastDec2Bin(l_0_4, "(%d+)[^%d]?"), "[JenxcusCrypt1.1]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

