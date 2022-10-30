-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3434.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) then
  local l_0_0 = (mp.getfilesize)()
  if l_0_0 >= 8388608 then
    return mp.CLEAN
  end
  local l_0_1 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
  if (string.sub)(l_0_1, 0, 4) == "\\\\?\\" then
    l_0_1 = (string.sub)(l_0_1, 5)
  end
  if l_0_1:sub(1, 8) == "\\device\\" then
    l_0_1 = (MpCommon.PathToWin32Path)(l_0_1)
    if l_0_1 == nil then
      return mp.CLEAN
    end
    l_0_1 = (string.lower)(l_0_1)
  end
  local l_0_2 = {}
  local l_0_3 = (mp.enum_mpattributesubstring)("SLF:")
  if #l_0_3 ~= 0 and l_0_3 ~= nil then
    for l_0_7,l_0_8 in ipairs(l_0_3) do
      (table.insert)(l_0_2, l_0_8)
    end
  end
  do
    local l_0_9 = (mp.enum_mpattributesubstring)("ALF:")
    if #l_0_9 ~= 0 and l_0_9 ~= nil then
      for l_0_13,l_0_14 in ipairs(l_0_9) do
        (table.insert)(l_0_2, l_0_14)
      end
    end
    do
      local l_0_15 = (mp.enum_mpattributesubstring)("TEL:")
      if #l_0_15 ~= 0 and l_0_15 ~= nil then
        for l_0_19,l_0_20 in ipairs(l_0_15) do
          (table.insert)(l_0_2, l_0_20)
        end
      end
      do
        if #l_0_2 ~= 0 and l_0_2 ~= nil then
          for l_0_24,l_0_25 in ipairs(l_0_2) do
            if not (string.find)(l_0_25, "!rfn", 1, true) and not (string.find)(l_0_25, "HeraklezEval", 1, true) and not (string.find)(l_0_25, "ASRCALL", 1, true) then
              local l_0_26 = (MpCommon.QueryPersistContext)(l_0_1, l_0_25)
              if not l_0_26 then
                (MpCommon.AppendPersistContext)(l_0_1, l_0_25, 180)
              end
            end
          end
        end
        do
          do
            local l_0_27 = (MpCommon.QueryPersistContext)(l_0_1, "BMLowfiTrigger")
            if not l_0_27 then
              (mp.set_mpattribute)("MpDisableCaching")
              ;
              (MpCommon.AppendPersistContext)(l_0_1, "BMLowfiTrigger", 180)
            end
            do return mp.INFECTED end
            return mp.CLEAN
          end
        end
      end
    end
  end
end

