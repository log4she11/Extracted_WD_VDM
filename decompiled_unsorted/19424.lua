-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19424.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 ~= nil and l_0_0 >= 20480 then
  return mp.CLEAN
end
local l_0_1 = LoadMatchedDataInBuffer()
local l_0_2 = "%curl http://[%d]+%.[%d]+%.[%d]+%.[%d]+/[/%w%.%-_]+;%s*chmod%s%+x%s[/%w%.%-_]+;%s+[/%w%.%-_]+"
if GetPatternOccurenceCount(l_0_1, l_0_2) > 8 then
  return mp.INFECTED
end
return mp.CLEAN

