-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18832.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 255 then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.getfilename)())
if l_0_1:find("%.eml%->%(part000%d:%)$") or l_0_1:find("%->%(ole stream %d%)%->%(msg%)%->%(rtfbody%)") then
  return mp.INFECTED
end
return mp.CLEAN

