-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18806.luac 

-- params : ...
-- function num : 0
local l_0_0 = 0
local l_0_1 = "//SCPT:HTML/DoubleCryptoFraudKey"
for l_0_5 = 1, 30 do
  local l_0_6 = l_0_1 .. l_0_5
  if (mp.get_mpattribute)(l_0_6) then
    l_0_0 = l_0_0 + 1
  end
end
if l_0_0 > 1 then
  return mp.INFECTED
end
return mp.CLEAN

