-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1029.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[3]).matched then
  local l_0_0, l_0_1 = nil, nil
  local l_0_2 = nil
end
do
  -- DECOMPILER ERROR at PC24: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

  do
    if l_0_0 ~= nil and l_0_1 ~= nil then
      local l_0_3 = nil
      -- DECOMPILER ERROR at PC36: Confused about usage of register: R1 in 'UnsetPending'

      -- DECOMPILER ERROR at PC36: Confused about usage of register: R2 in 'UnsetPending'

      if (string.match)(l_0_0, "\\([^\\]+)$") ~= nil and (string.match)(l_0_0, "\\([^\\]+)$") == l_0_1 then
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

