-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22154.luac 

-- params : ...
-- function num : 0
local l_0_1, l_0_4, l_0_8, l_0_11, l_0_15, l_0_18, l_0_22, l_0_25, l_0_27, l_0_36 = nil, nil, nil, nil
if (this_sigattrlog[4]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[4]).utf8p2)
  local l_0_2 = nil
  l_0_2 = (string.match)((string.lower)((this_sigattrlog[4]).utf8p1), "\\([^\\]+)$")
  local l_0_6 = nil
else
  do
    if (this_sigattrlog[5]).matched then
      local l_0_3 = (string.lower)((this_sigattrlog[5]).utf8p2)
      local l_0_5 = nil
      -- DECOMPILER ERROR at PC56: Overwrote pending register: R3 in 'AssignReg'

    else
      do
        if (this_sigattrlog[6]).matched then
          local l_0_7 = (string.lower)((this_sigattrlog[6]).utf8p2)
          local l_0_9 = l_0_5
          -- DECOMPILER ERROR at PC85: Overwrote pending register: R3 in 'AssignReg'

          local l_0_13 = nil
        else
          do
            if (this_sigattrlog[7]).matched then
              local l_0_10 = (string.lower)((this_sigattrlog[7]).utf8p2)
              local l_0_12 = l_0_9
              -- DECOMPILER ERROR at PC114: Overwrote pending register: R3 in 'AssignReg'

            else
              do
                if (this_sigattrlog[8]).matched then
                  local l_0_14 = (string.lower)((this_sigattrlog[8]).utf8p2)
                  local l_0_16 = l_0_12
                  -- DECOMPILER ERROR at PC143: Overwrote pending register: R3 in 'AssignReg'

                  local l_0_20, l_0_29, l_0_38 = , (this_sigattrlog[4]).ppid
                else
                  do
                    if (this_sigattrlog[9]).matched then
                      local l_0_17, l_0_21, l_0_24, l_0_26, l_0_30, l_0_31, l_0_32, l_0_33, l_0_34, l_0_35 = (string.lower)((this_sigattrlog[9]).utf8p2), l_0_16
                      l_0_30 = string
                      l_0_30 = l_0_30.lower
                      l_0_31 = this_sigattrlog
                      l_0_31 = l_0_31[9]
                      l_0_31 = l_0_31.utf8p1
                      l_0_30 = l_0_30(l_0_31)
                      l_0_24 = l_0_30
                      local l_0_19, l_0_23, l_0_28, l_0_37 = nil
                      l_0_30 = string
                      l_0_30 = l_0_30.match
                      l_0_31 = l_0_24
                      l_0_32 = "\\([^\\]+)$"
                      l_0_30 = l_0_30(l_0_31, l_0_32)
                      l_0_21 = l_0_30
                      l_0_30 = this_sigattrlog
                      l_0_30 = l_0_30[9]
                      l_0_26 = l_0_30.ppid
                    else
                      do
                        do return mp.CLEAN end
                        -- DECOMPILER ERROR at PC177: Confused about usage of register: R2 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC179: Confused about usage of register: R1 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC181: Confused about usage of register: R3 in 'UnsetPending'

                        if l_0_24 == nil or l_0_21 == nil or l_0_26 == nil then
                          return mp.CLEAN
                        end
                        local l_0_39 = nil
                        local l_0_40 = nil
                        if l_0_39 ~= nil then
                          if (string.find)(l_0_39, ".csv", 1, true) or (string.find)(l_0_39, ".ora", 1, true) then
                            return mp.CLEAN
                          end
                          local l_0_41 = nil
                          -- DECOMPILER ERROR at PC230: Overwrote pending register: R6 in 'AssignReg'

                          -- DECOMPILER ERROR at PC249: Overwrote pending register: R6 in 'AssignReg'

                          if (string.sub)(l_0_39, -1) ~= "\"" or (string.match)(nil, "[^\"].*[^\"]") == nil then
                            return mp.CLEAN
                          end
                          -- DECOMPILER ERROR at PC257: Confused about usage of register: R6 in 'UnsetPending'

                          local l_0_42 = nil
                          if (string.match)((string.match)(nil, "[^\"].*[^\"]"), "\\([^\\]+)$") == nil then
                            return mp.CLEAN
                          end
                          local l_0_43 = {}
                          -- DECOMPILER ERROR at PC268: Confused about usage of register: R6 in 'UnsetPending'

                          -- DECOMPILER ERROR at PC275: Confused about usage of register: R6 in 'UnsetPending'

                          if not (MpCommon.QueryPersistContext)((string.match)(nil, "[^\"].*[^\"]"), "BitsadminTarget") then
                            (MpCommon.AppendPersistContext)((string.match)(nil, "[^\"].*[^\"]"), "BitsadminTarget", 600)
                          end
                          local l_0_44 = nil
                          ;
                          (table.insert)(l_0_43, "BM_M" .. "T1197")
                          -- DECOMPILER ERROR at PC290: Confused about usage of register: R9 in 'UnsetPending'

                          ;
                          (table.insert)(l_0_43, "BM_M" .. "T1197" .. ":sourcefilename_" .. l_0_40)
                          -- DECOMPILER ERROR at PC298: Confused about usage of register: R9 in 'UnsetPending'

                          ;
                          (table.insert)(l_0_43, "BM_M" .. "T1197" .. ":sourceppid_" .. l_0_42)
                          -- DECOMPILER ERROR at PC306: Confused about usage of register: R9 in 'UnsetPending'

                          ;
                          (table.insert)(l_0_43, "BM_M" .. "T1197" .. ":bits_target_" .. (string.match)((string.match)(nil, "[^\"].*[^\"]"), "\\([^\\]+)$"))
                          -- DECOMPILER ERROR at PC314: Confused about usage of register: R9 in 'UnsetPending'

                          ;
                          (table.insert)(l_0_43, "BM_M" .. "T1197" .. ":BitsTargetFile")
                          local l_0_45 = nil
                          -- DECOMPILER ERROR at PC325: Overwrote pending register: R10 in 'AssignReg'

                          if false == false then
                            return mp.CLEAN
                          end
                          return mp.INFECTED
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
          end
        end
      end
    end
  end
end

