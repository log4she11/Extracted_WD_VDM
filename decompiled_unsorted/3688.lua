-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3688.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_3, l_0_4, l_0_6, l_0_7, l_0_8 = nil, nil, nil
do
  if (this_sigattrlog[6]).matched then
    local l_0_2 = nil
    -- DECOMPILER ERROR at PC10: Confused about usage of register: R2 in 'UnsetPending'

    if (this_sigattrlog[6]).utf8p1 ~= nil then
      l_0_2 = (this_sigattrlog[6]).utf8p1
    end
  end
  do
    if (this_sigattrlog[7]).matched then
      local l_0_5 = nil
      -- DECOMPILER ERROR at PC21: Confused about usage of register: R2 in 'UnsetPending'

    end
    -- DECOMPILER ERROR at PC22: Confused about usage of register: R0 in 'UnsetPending'

    if (this_sigattrlog[7]).utf8p1 == nil or l_0_5:match("([^/]+)$") == ((this_sigattrlog[7]).utf8p1):match("([^/]+).plist") then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

