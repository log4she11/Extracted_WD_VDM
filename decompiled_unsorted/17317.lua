-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17317.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 ~= nil and (string.find)((string.lower)((mp.getfilename)()), ".php") and l_0_0 > 40000 and l_0_0 < 48000 then
  return mp.INFECTED
end
return mp.CLEAN

