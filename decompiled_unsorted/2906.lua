-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2906.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(mp.getfilename, mp.FILEPATH_QUERY_FNAME)
if l_0_0 then
  if #l_0_1 ~= 10 then
    return mp.CLEAN
  end
  if l_0_1:sub(1, 2) ~= "~D" then
    return mp.CLEAN
  end
  if (mp.readheader)(0, 8) == "[CONFIG]" then
    return mp.INFECTED
  end
end
return mp.CLEAN

