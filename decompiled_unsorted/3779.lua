-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3779.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil and (string.sub)(l_0_0, -10) == "/sbin/aide" then
  return mp.CLEAN
end
return mp.INFECTED

