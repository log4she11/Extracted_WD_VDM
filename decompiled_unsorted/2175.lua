-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2175.luac 

-- params : ...
-- function num : 0
Int64ToByteString = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = ""
  for l_1_5 = 0, 7 do
    l_1_1 = l_1_1 .. (string.char)(bitand((crypto.shr64)(l_1_0, l_1_5 * 8), 255))
  end
  return l_1_1
end


