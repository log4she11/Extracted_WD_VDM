-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/8720.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("BM_OLE_FILE") then
  return mp.INFECTED
end
return mp.LOWFI

