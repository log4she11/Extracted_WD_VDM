-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2037.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 524288 then
  (mp.set_mpattribute)("MACRO_FILE_SIZE:L0.5MB")
end
return mp.CLEAN

