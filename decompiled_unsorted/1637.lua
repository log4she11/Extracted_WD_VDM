-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1637.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_process_relationships)()
for l_0_4,l_0_5 in ipairs(l_0_0) do
  if l_0_5.reason == bm.RELATIONSHIP_INJECTION then
    return mp.INFECTED
  end
end
return mp.CLEAN

