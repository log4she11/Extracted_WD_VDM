-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15997.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.isdll and peattributes.no_security and l_0_0 > 282624 and l_0_0 < 286720 then
  return mp.INFECTED
end
return mp.CLEAN

