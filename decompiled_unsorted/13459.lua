-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/13459.luac 

-- params : ...
-- function num : 0
if (string.find)((mp.getfilename)(), "%-%>%(VFS%:%d+%.bat%)$") == nil then
  return mp.CLEAN
end
return mp.INFECTED

