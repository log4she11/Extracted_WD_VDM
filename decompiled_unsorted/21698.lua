-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21698.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched then
      local l_0_1 = (this_sigattrlog[3]).utf8p1
    else
    end
    -- DECOMPILER ERROR at PC43: Overwrote pending register: R0 in 'AssignReg'

    do
      if not (this_sigattrlog[5]).matched or (this_sigattrlog[6]).matched then
        local l_0_2 = (this_sigattrlog[5]).utf8p1
      else
      end
      -- DECOMPILER ERROR at PC61: Overwrote pending register: R0 in 'AssignReg'

      do
        if not (this_sigattrlog[7]).matched or (this_sigattrlog[8]).matched then
          local l_0_3 = (this_sigattrlog[7]).utf8p1
        else
        end
        -- DECOMPILER ERROR at PC79: Overwrote pending register: R0 in 'AssignReg'

        do
          if not (this_sigattrlog[9]).matched or (this_sigattrlog[10]).matched then
            local l_0_4 = (this_sigattrlog[9]).utf8p1
          end
          -- DECOMPILER ERROR at PC80: Confused about usage of register: R0 in 'UnsetPending'

          if l_0_4 == nil then
            return mp.CLEAN
          end
          -- DECOMPILER ERROR at PC87: Confused about usage of register: R0 in 'UnsetPending'

          local l_0_5 = (string.lower)(l_0_4)
          -- DECOMPILER ERROR at PC101: Overwrote pending register: R2 in 'AssignReg'

          do
            if (this_sigattrlog[11]).matched then
              local l_0_7 = nil
            end
            if l_0_5 ~= nil and nil ~= nil then
              local l_0_6 = (string.match)(l_0_5, "\\([^\\]+)$")
              -- DECOMPILER ERROR at PC120: Confused about usage of register: R2 in 'UnsetPending'

              if l_0_6:sub(1, 2) == "ms" then
                local l_0_8 = (string.match)(nil, "\\([^\\]+)$")
                if l_0_6 == l_0_8 then
                  (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)(l_0_5), 4199551960)
                  return mp.INFECTED
                end
              end
            end
            do
              return mp.CLEAN
            end
          end
        end
      end
    end
  end
end

