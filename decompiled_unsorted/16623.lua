-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16623.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if (string.sub)(l_0_0, -10) == "->(Upxw64)" then
  (mp.set_mpattribute)("HSTR:HackTool:Win64/MikatzUPX")
end
return mp.INFECTED

