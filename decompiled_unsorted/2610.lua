-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2610.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(mp.getfilename, mp.FILEPATH_QUERY_FNAME)
if l_0_0 then
  if l_0_1:sub(1, 4) ~= "res_" then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

