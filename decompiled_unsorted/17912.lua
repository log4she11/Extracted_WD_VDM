-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17912.luac 

-- params : ...
-- function num : 0
local l_0_1 = nil
local l_0_0 = (this_sigattrlog[2]).ppid
if (this_sigattrlog[3]).matched then
  local l_0_2, l_0_3 = nil, (bm.get_process_relationships)((this_sigattrlog[3]).ppid)
  for l_0_7,l_0_8 in ipairs(l_0_3) do
    local l_0_4 = nil
    -- DECOMPILER ERROR at PC18: Confused about usage of register: R8 in 'UnsetPending'

    l_0_2 = R8_PC18.ppid
    do break end
  end
  do
    do
      if l_0_0 == l_0_2 then
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

