-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16214.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.ismsil == true and peattributes.no_security == true and l_0_0 >= 131072 and l_0_0 <= 139264 then
  return mp.INFECTED
end
return mp.CLEAN

