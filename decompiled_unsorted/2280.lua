-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2280.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 1048576 then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)()
if (string.lower)((string.sub)(l_0_1, -11)) == "w10_0day.py" then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN

