-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16185.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == true and peattributes.ismsil == true and l_0_0 >= 12288 and l_0_0 <= 86016 then
  return mp.INFECTED
end
return mp.LOWFI

