-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2263.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 100000 then
  return mp.CLEAN
end
if (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)) == "loader.bat" then
  return mp.INFECTED
end
return mp.CLEAN

