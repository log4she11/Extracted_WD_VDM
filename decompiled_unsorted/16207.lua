-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16207.luac 

-- params : ...
-- function num : 0
local l_0_0 = ((mp.getfilename)(mp.FILEPATH_QUERY_FNAME)):lower()
if l_0_0:find("blackbone", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

