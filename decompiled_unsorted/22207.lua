-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22207.luac 

-- params : ...
-- function num : 0
getAgePrev = function(l_1_0)
  -- function num : 0_0
  local l_1_1, l_1_3 = nil
  local l_1_2 = nil
  local l_1_4 = -1
  local l_1_5 = nil
  local l_1_6 = -1
  -- DECOMPILER ERROR at PC23: Confused about usage of register: R5 in 'UnsetPending'

  -- DECOMPILER ERROR at PC25: Confused about usage of register: R6 in 'UnsetPending'

  -- DECOMPILER ERROR at PC27: Confused about usage of register: R5 in 'UnsetPending'

  -- DECOMPILER ERROR at PC28: Confused about usage of register: R6 in 'UnsetPending'

  if (l_1_0 ~= nil and l_1_0 == true) or l_1_0 == false then
    if (mp.get_mpattributevalue)("Lua:FmsAgeInDays") ~= nil and (mp.get_mpattributevalue)("Lua:FmsPrevalence") ~= nil and (mp.get_mpattributevalue)("Lua:FmsAgeInDays") > -1 and (mp.get_mpattributevalue)("Lua:FmsPrevalence") > -1 then
      return (mp.get_mpattributevalue)("Lua:FmsAgeInDays"), (mp.get_mpattributevalue)("Lua:FmsPrevalence")
    else
      local l_1_7 = nil
      if (MpCommon.GetPersistContext)((mp.getfilename)()) ~= nil then
        for l_1_11,l_1_12 in ipairs((MpCommon.GetPersistContext)((mp.getfilename)())) do
          local l_1_8, l_1_9 = nil
          -- DECOMPILER ERROR at PC46: Confused about usage of register: R12 in 'UnsetPending'

          l_1_2 = tonumber((string.match)(R12_PC46, "^Age:([0-9]+)$"))
          if l_1_2 ~= nil and l_1_4 < l_1_2 then
            l_1_4 = l_1_2
          end
          l_1_5 = tonumber((string.match)(R12_PC46, "^Prevalence:([0-9]+)$"))
          if l_1_5 ~= nil and l_1_6 < l_1_5 then
            l_1_6 = l_1_5
          end
        end
      end
      do
        do
          if l_1_4 > -1 and l_1_6 > -1 then
            setAgePrev(l_1_4, l_1_6)
            return l_1_4, l_1_6
          end
          local l_1_13 = nil
          local l_1_14 = nil
          if (mp.enum_mpattributesubstring)("PreAgent:") and #(mp.enum_mpattributesubstring)("PreAgent:") > 0 then
            for l_1_18,l_1_19 in ipairs((mp.enum_mpattributesubstring)("PreAgent:")) do
              local l_1_15, l_1_16 = 362514
              if (string.match)(tonumber((string.match)(R12_PC46, "^Prevalence:([0-9]+)$")), "PreAgent:V(%d+)V(%d+)$") then
                l_1_2 = tonumber((string.match)(tonumber((string.match)(R12_PC46, "^Prevalence:([0-9]+)$")), "PreAgent:V(%d+)V(%d+)$"))
              end
              if l_1_2 then
                l_1_2 = l_1_2 - l_1_15
              end
              if l_1_4 < l_1_2 then
                l_1_4 = l_1_2
              end
              if tonumber((string.match)(R12_PC46, "^Prevalence:([0-9]+)$")) then
                l_1_5 = tonumber(R17_PC117)
              end
              if l_1_5 then
                l_1_5 = l_1_5 - l_1_15
              end
              if l_1_6 < l_1_5 then
                l_1_6 = l_1_5
              end
            end
          end
          do
            if l_1_13 == nil or l_1_14 == nil then
              setAgePrev(l_1_4, l_1_6)
            end
            return l_1_4, l_1_6
          end
        end
      end
    end
  end
end

setAgePrev = function(l_2_0, l_2_1)
  -- function num : 0_1
  if type(l_2_0) ~= "number" or type(l_2_1) ~= "number" then
    return false
  end
  if l_2_0 > -1 and l_2_1 > -1 then
    (mp.set_mpattributeex)("Lua:FmsAgeInDays", l_2_0)
    ;
    (mp.set_mpattributeex)("Lua:FmsPrevalence", l_2_1)
    local l_2_2 = "Age:" .. tostring(l_2_0)
    local l_2_3 = "Prevalence:" .. tostring(l_2_1)
    local l_2_4 = (mp.getfilename)()
    if (MpCommon.GetPersistContextCount)(l_2_4) == 0 then
      local l_2_5 = {}
      ;
      (table.insert)(l_2_5, l_2_2)
      ;
      (table.insert)(l_2_5, l_2_3)
      ;
      (MpCommon.SetPersistContext)(l_2_4, l_2_5, 0)
    else
      do
        do
          if not (MpCommon.QueryPersistContext)(l_2_4, l_2_2) then
            (MpCommon.AppendPersistContext)(l_2_4, l_2_2, 0)
          end
          if not (MpCommon.QueryPersistContext)(l_2_4, l_2_3) then
            (MpCommon.AppendPersistContext)(l_2_4, l_2_3, 0)
          end
          if l_2_0 == 0 then
            (mp.set_mpattribute)("BM_AgeEquals0")
          else
            if l_2_0 == 1 then
              (mp.set_mpattribute)("BM_AgeEquals1")
            else
              if l_2_0 == 2 then
                (mp.set_mpattribute)("BM_AgeEquals2")
              else
                if l_2_0 == 3 then
                  (mp.set_mpattribute)("BM_AgeEquals3")
                else
                  if l_2_0 == 4 then
                    (mp.set_mpattribute)("BM_AgeEquals4")
                  else
                    if l_2_0 == 5 then
                      (mp.set_mpattribute)("BM_AgeEquals5")
                    else
                      if l_2_0 == 6 then
                        (mp.set_mpattribute)("BM_AgeEquals6")
                      else
                        if l_2_0 == 7 then
                          (mp.set_mpattribute)("BM_AgeEquals7")
                        else
                          if l_2_0 <= 15 then
                            (mp.set_mpattribute)("BM_AgeUpTo15")
                          else
                            if l_2_0 <= 30 then
                              (mp.set_mpattribute)("BM_AgeUpTo30")
                            else
                              if l_2_0 <= 90 then
                                (mp.set_mpattribute)("BM_AgeUpTo90")
                              else
                                if l_2_0 <= 180 then
                                  (mp.set_mpattribute)("BM_AgeUpTo180")
                                else
                                  if l_2_0 <= 360 then
                                    (mp.set_mpattribute)("BM_AgeUpTo360")
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
          if l_2_1 == 0 then
            (mp.set_mpattribute)("BM_PrevalenceEquals0")
          else
            if l_2_1 <= 10 then
              (mp.set_mpattribute)("BM_PrevalenceUpTo10")
            else
              if l_2_1 <= 20 then
                (mp.set_mpattribute)("BM_PrevalenceUpTo20")
              else
                if l_2_1 <= 50 then
                  (mp.set_mpattribute)("BM_PrevalenceUpTo50")
                else
                  if l_2_1 <= 100 then
                    (mp.set_mpattribute)("BM_PrevalenceUpTo100")
                  else
                    if l_2_1 <= 500 then
                      (mp.set_mpattribute)("BM_PrevalenceUpTo500")
                    else
                      if l_2_1 <= 1000 then
                        (mp.set_mpattribute)("BM_PrevalenceUpTo1000")
                      else
                        if l_2_1 <= 5000 then
                          (mp.set_mpattribute)("BM_PrevalenceUpTo5000")
                        else
                          if l_2_1 <= 10000 then
                            (mp.set_mpattribute)("BM_PrevalenceUpTo10000")
                          else
                            if l_2_1 <= 50000 then
                              (mp.set_mpattribute)("BM_PrevalenceUpTo50000")
                            else
                              if l_2_1 <= 100000 then
                                (mp.set_mpattribute)("BM_PrevalenceUpTo100000")
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
          do return true end
          return false
        end
      end
    end
  end
end

clearPersistContext = function(l_3_0, l_3_1)
  -- function num : 0_2
  if l_3_0 == nil or l_3_0 == "" or l_3_1 == nil or l_3_1 == "" then
    return false
  end
  if (MpCommon.GetPersistContextCount)(l_3_0) == 0 then
    return true
  end
  local l_3_2 = {}
  local l_3_3 = false
  local l_3_4 = (MpCommon.GetPersistContext)(l_3_0)
  if l_3_4 ~= nil then
    for l_3_8,l_3_9 in ipairs(l_3_4) do
      if l_3_9 ~= l_3_1 then
        (table.insert)(l_3_2, l_3_9)
      else
        l_3_3 = true
      end
    end
  end
  do
    if l_3_3 == true then
      (MpCommon.SetPersistContext)(l_3_0, l_3_2, 0)
    end
    return l_3_3
  end
end

clearPersistContextNoPath = function(l_4_0, l_4_1)
  -- function num : 0_3
  if l_4_0 == nil or l_4_0 == "" or l_4_1 == nil or l_4_1 == "" then
    return false
  end
  if (MpCommon.GetPersistContextCountNoPath)(l_4_0) == 0 then
    return true
  end
  local l_4_2 = {}
  local l_4_3 = false
  local l_4_4 = (MpCommon.GetPersistContextNoPath)(l_4_0)
  if l_4_4 ~= nil then
    for l_4_8,l_4_9 in ipairs(l_4_4) do
      if l_4_9 ~= l_4_1 then
        (table.insert)(l_4_2, l_4_9)
      else
        l_4_3 = true
      end
    end
  end
  do
    if l_4_3 == true then
      (MpCommon.SetPersistContextNoPath)(l_4_0, l_4_2, 0)
    end
    return l_4_3
  end
end


