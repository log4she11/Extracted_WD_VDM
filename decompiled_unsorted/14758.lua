-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14758.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 <= 155000 and l_0_0 >= 150000 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

