-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/879.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

local l_0_0 = nil
if l_0_0:find("->word/_rels/", 1, true) or l_0_0:find("/drawings/_rels/", 1, true) or l_0_0:find("/worksheets/_rels/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

