-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18804.luac 

-- params : ...
-- function num : 0
local l_0_0 = 0
if (mp.bitand)(mp.HSTR_WEIGHT, 240) > 0 then
  l_0_0 = 2
end
if (mp.bitand)(mp.HSTR_WEIGHT, 15) + l_0_0 >= 4 then
  if pehdr.Machine ~= 332 then
    (mp.changedetectionname)(805306465)
  end
  return mp.INFECTED
end
return mp.CLEAN

