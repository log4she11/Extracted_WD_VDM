-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/42.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
local l_0_1 = (mp.getfilesize)()
if l_0_0 == nil or l_0_1 < 10485760 then
  return mp.CLEAN
end
local l_0_2 = l_0_0.FileDescription
local l_0_3 = l_0_0.InternalName
if l_0_2 and l_0_3 then
  l_0_2 = (string.lower)(l_0_2)
  l_0_3 = (string.lower)(l_0_3)
  if (string.find)(l_0_2, "360安全浏览�\168", 1, true) and (string.find)(l_0_3, "mini_installer", 1, true) then
    (mp.set_mpattribute)("Lua:360Browser")
    return mp.INFECTED
  end
end
return mp.CLEAN

