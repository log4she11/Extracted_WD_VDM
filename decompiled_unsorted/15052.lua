-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15052.luac 

-- params : ...
-- function num : 0
if (pe.get_regval)(pe.REG_EAX) == 106 and (pe.get_regval)(pe.REG_EDX) == 80 then
  return mp.INFECTED
end
return mp.CLEAN

