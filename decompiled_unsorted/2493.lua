-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2493.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 40960 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
local l_0_2 = (string.find)(l_0_1, "\"%+\"")
if l_0_2 == nil then
  return mp.CLEAN
end
;
(mp.vfo_add_buffer)(l_0_1:gsub("\"%+\"", ""), "[BPFix]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

