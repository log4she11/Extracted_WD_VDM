-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22181.luac 

-- params : ...
-- function num : 0
Infrastructure_CryptoSearcher = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = (mp.getfilesize)()
  if l_1_1 > 250000 then
    return false
  end
  local l_1_2 = l_1_0 - 8192
  do
    if 0 < l_1_2 then
      local l_1_3 = l_1_2
    end
    -- DECOMPILER ERROR at PC12: Confused about usage of register: R3 in 'UnsetPending'

    local l_1_4 = nil
    local l_1_5 = l_1_1 - l_1_3
    -- DECOMPILER ERROR at PC16: Overwrote pending register: R5 in 'AssignReg'

    if l_1_5 < 16384 then
      (mp.readprotection)(false)
      local l_1_6 = nil
      local l_1_7 = (mp.readfile)(l_1_4, 16384)
      local l_1_8 = -1
      local l_1_9 = -1
      local l_1_10 = {["\'"] = true, ["\""] = true, [">"] = true, ["<"] = true, [" "] = true, ["\t"] = true}
      local l_1_11 = {}
      local l_1_12 = "MpInternal_researchdata="
      local l_1_13 = (string.gmatch)(l_1_7, "([%\"%\'%>%. ])([013baADLm]%w+)(%W)")
      for l_1_17,l_1_18,l_1_19 in l_1_13 do
        local l_1_14 = false
        local l_1_21 = ""
        local l_1_22 = ""
        if l_1_10[l_1_18] == true and l_1_10[l_1_20] == true then
          local l_1_23 = ""
          if (string.len)(l_1_19) > 25 and l_1_11[l_1_19] == nil then
            l_1_11[l_1_19] = 1
            local l_1_24 = nil
            local l_1_25 = l_1_19:sub(1, 1)
            local l_1_26 = l_1_19:sub(1, 2)
            local l_1_27 = l_1_19:sub(1, 3)
            local l_1_28 = l_1_19:sub(1, 4)
          end
          do
            -- DECOMPILER ERROR at PC103: Overwrote pending register: R20 in 'AssignReg'

            -- DECOMPILER ERROR at PC104: Overwrote pending register: R21 in 'AssignReg'

            -- DECOMPILER ERROR at PC105: Overwrote pending register: R22 in 'AssignReg'

            -- DECOMPILER ERROR at PC113: Overwrote pending register: R21 in 'AssignReg'

            -- DECOMPILER ERROR at PC114: Overwrote pending register: R22 in 'AssignReg'

            -- DECOMPILER ERROR at PC122: Overwrote pending register: R21 in 'AssignReg'

            -- DECOMPILER ERROR at PC123: Overwrote pending register: R22 in 'AssignReg'

            -- DECOMPILER ERROR at PC135: Overwrote pending register: R20 in 'AssignReg'

            -- DECOMPILER ERROR at PC136: Overwrote pending register: R21 in 'AssignReg'

            -- DECOMPILER ERROR at PC137: Overwrote pending register: R22 in 'AssignReg'

            -- DECOMPILER ERROR at PC149: Overwrote pending register: R20 in 'AssignReg'

            -- DECOMPILER ERROR at PC150: Overwrote pending register: R21 in 'AssignReg'

            -- DECOMPILER ERROR at PC151: Overwrote pending register: R22 in 'AssignReg'

            -- DECOMPILER ERROR at PC166: Overwrote pending register: R20 in 'AssignReg'

            -- DECOMPILER ERROR at PC167: Overwrote pending register: R21 in 'AssignReg'

            -- DECOMPILER ERROR at PC168: Overwrote pending register: R22 in 'AssignReg'

            -- DECOMPILER ERROR at PC175: Unhandled construct in 'MakeBoolean' P3

            -- DECOMPILER ERROR at PC175: Unhandled construct in 'MakeBoolean' P3

            -- DECOMPILER ERROR at PC175: Unhandled construct in 'MakeBoolean' P3

            -- DECOMPILER ERROR at PC175: Unhandled construct in 'MakeBoolean' P3

            -- DECOMPILER ERROR at PC175: Unhandled construct in 'MakeBoolean' P3

            -- DECOMPILER ERROR at PC175: Unhandled construct in 'MakeBoolean' P3

            -- DECOMPILER ERROR at PC175: Unhandled construct in 'MakeBoolean' P3

            if ((((l_1_25 ~= "1" and l_1_25 ~= "3" and l_1_27 ~= "bc1") or l_1_26 == "0x") and l_1_7:find("send SHIB", 1, true) ~= nil and l_1_7:find("send BNB", 1, true) == nil) or l_1_25 == "L" or l_1_25 == "M" or l_1_28 ~= "ltc1" or l_1_24 <= 25 or l_1_24 >= 36 or l_1_27 == "Ae2" or l_1_19:sub(1, 5) == "addr1" or l_1_19:sub(1, 5) ~= "DdzFF" or l_1_24 <= 25 or l_1_24 >= 200 or l_1_21 ~= "") and l_1_22 ~= "" and l_1_23 ~= "" then
              l_1_14 = true
              if l_1_12 == "MpInternal_researchdata=" then
                l_1_12 = l_1_12 .. l_1_22 .. "=" .. l_1_21
              else
                l_1_12 = l_1_12 .. "," .. l_1_22 .. "=" .. l_1_21
              end
              if l_1_8 < 0 and l_1_9 < 0 then
                local l_1_29 = nil
                if (string.find)(l_1_7, l_1_21, 1, true) ~= nil then
                  l_1_8 = l_1_4 + (string.find)(l_1_7, l_1_21, 1, true) - 1
                  l_1_9 = l_1_6 - (string.find)(l_1_7, l_1_21, 1, true) + 1
                end
              end
            end
            do
              -- DECOMPILER ERROR at PC207: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC207: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC207: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
      -- DECOMPILER ERROR at PC209: Confused about usage of register: R13 in 'UnsetPending'

      if l_1_14 == false then
        return false
      else
        ;
        (mp.set_mpattribute)(l_1_12)
        if l_1_8 > -1 and l_1_9 > 0 then
          (mp.vfo_add_filechunk)(l_1_8, l_1_9, "[CryptoSearcher]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
        end
      end
      return true
    end
  end
end

LoadMatchedDataInBuffer = function()
  -- function num : 0_1
  local l_2_0 = nil
  local l_2_1 = nil
  if ((mp.GetBruteMatchData)()).is_header then
    l_2_1 = (tostring(headerpage)):sub(((mp.GetBruteMatchData)()).match_offset, ((mp.GetBruteMatchData)()).match_offset + mp.HEADERPAGE_SZ)
  else
    l_2_1 = (tostring(footerpage)):sub(((mp.GetBruteMatchData)()).match_offset, ((mp.GetBruteMatchData)()).match_offset + mp.FOOTERPAGE_SZ)
  end
  l_2_1 = (string.lower)(l_2_1)
  return l_2_1
end

GetPatternOccurenceCount = function(l_3_0, l_3_1)
  -- function num : 0_2
  local l_3_2 = 0
  for l_3_6 in (string.gmatch)(l_3_0, l_3_1) do
    l_3_2 = l_3_2 + 1
  end
  return l_3_2
end


