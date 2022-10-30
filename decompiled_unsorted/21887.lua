-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21887.luac 

-- params : ...
-- function num : 0
bytes_to_int = function(l_1_0, l_1_1, l_1_2, l_1_3)
  -- function num : 0_0
  if not l_1_3 then
    error("need four bytes to convert to int", 2)
  end
  return l_1_0 + l_1_1 * 256 + l_1_2 * 65536 + l_1_3 * 16777216
end

pointer2int = function(l_2_0, l_2_1)
  -- function num : 0_1
  local l_2_2 = (string.byte)(l_2_0, l_2_1)
  local l_2_3 = (string.byte)(l_2_0, l_2_1 + 1)
  local l_2_4 = (string.byte)(l_2_0, l_2_1 + 2)
  local l_2_5 = (string.byte)(l_2_0, l_2_1 + 3)
  return bytes_to_int(l_2_2, l_2_3, l_2_4, l_2_5)
end

local l_0_0 = (hstrlog[1]).VA
local l_0_1 = 20
local l_0_2 = ((pe.mmap_va)(l_0_0 - l_0_1, l_0_1))
local l_0_3 = nil
for l_0_7 = 1, l_0_1 do
  if (string.byte)(l_0_2, l_0_7) == 138 and (string.byte)(l_0_2, l_0_7 + 5) == 0 then
    l_0_3 = pointer2int(l_0_2, l_0_7 + 2)
    break
  end
end
do
  if l_0_3 ~= nil then
    local l_0_8 = (pe.mmap_va)(l_0_3, 64)
    local l_0_9 = 13
    local l_0_10 = (string.byte)(l_0_8, l_0_9)
    local l_0_11 = (string.byte)(l_0_8, l_0_9 + 2)
    local l_0_12 = (string.byte)(l_0_8, l_0_9 + 3)
    local l_0_13 = (string.byte)(l_0_8, l_0_9 + 32)
    local l_0_14 = (string.byte)(l_0_8, l_0_9 + 34)
    local l_0_15 = (string.byte)(l_0_8, l_0_9 + 35)
    if (mp.bitxor)(l_0_10, l_0_13) == 117 and (mp.bitxor)(l_0_11, l_0_14) == 255 and (mp.bitxor)(l_0_12, l_0_15) == 85 then
      return mp.SUSPICIOUS
    end
  end
  do
    return mp.CLEAN
  end
end

