-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17969.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "miniunz%.exe") or (string.find)(l_0_0, "miniunz %(2015_") or (string.find)(l_0_0, "%.svn%-base") then
  return mp.CLEAN
end
return mp.INFECTED

