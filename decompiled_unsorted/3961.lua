-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3961.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC22: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1, l_0_2 = this_sigattrlog[2]
    end
    -- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC27: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil then
      local l_0_3 = nil
      for l_0_7,l_0_8 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_1.utf8p2)) do
        local l_0_4 = nil
        -- DECOMPILER ERROR at PC35: Confused about usage of register: R6 in 'UnsetPending'

        if (sysio.IsFileExists)(R6_PC35) then
          (bm.add_related_file)(R6_PC35)
        end
      end
    end
    do
      return mp.INFECTED
    end
  end
end

