-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18070.luac 

-- params : ...
-- function num : 0
fastHex2Bin = function(l_1_0, l_1_1)
  -- function num : 0_0
  local l_1_2 = {}
  local l_1_3 = string.char
  local l_1_4 = string.format
  for l_1_8 = 0, 255 do
    local l_1_9, l_1_14 = l_1_4("%02X", l_1_8)
    l_1_14 = l_1_3
    local l_1_16 = l_1_8
    l_1_14 = l_1_14(l_1_16)
    local l_1_15 = nil
    l_1_2[l_1_9] = l_1_14
  end
  local l_1_10, l_1_11 = (l_1_0:upper()):gsub, l_1_0:upper()
  local l_1_12 = l_1_1
  do
    local l_1_13 = l_1_2
    do return l_1_10(l_1_11, l_1_12, l_1_13) end
    -- DECOMPILER ERROR at PC25: Confused about usage of register R6 for local variables in 'ReleaseLocals'

  end
end


