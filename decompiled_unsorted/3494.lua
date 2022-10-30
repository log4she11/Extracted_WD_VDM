-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3494.luac 

-- params : ...
-- function num : 0
local l_0_0 = false
if (mp.get_mpattribute)("MpContentDetected") then
  local l_0_1 = (mp.getfilename)(mp.FILEPATH_QUERY_PATH)
  if (MpCommon.GetPersistContextCountNoPath)("tempRaiseToSyncLofiOnMalwareDropFolder") < 256 then
    (MpCommon.AppendPersistContextNoPath)("tempRaiseToSyncLofiOnMalwareDropFolder", l_0_1, 600)
  else
    local l_0_2 = {}
    ;
    (table.insert)(l_0_2, l_0_1)
    ;
    (MpCommon.SetPersistContextNoPath)("tempRaiseToSyncLofiOnMalwareDropFolder", l_0_2, 600)
  end
  do
    do
      do return mp.CLEAN end
      local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
      local l_0_4 = {}
      l_0_4["outlook.exe"] = ""
      l_0_4["iexplore.exe"] = ""
      l_0_4["browser_broker.exe"] = ""
      l_0_4["firefox.exe"] = ""
      l_0_4["chrome.exe"] = ""
      l_0_4["winword.exe"] = ""
      l_0_4["powerpnt.exe"] = ""
      l_0_4["excel.exe"] = ""
      l_0_4["acrord32.exe"] = ""
      l_0_4["slack.exe"] = ""
      l_0_4["powershell.exe"] = ""
      l_0_4["wscript.exe"] = ""
      l_0_4["cscript.exe"] = ""
      l_0_4["wmiprvse.exe"] = ""
      l_0_4["psexesvc.exe"] = ""
      local l_0_5 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
      if l_0_5 ~= nil and #l_0_5 > 4 and (l_0_4[l_0_5:lower()] or isOutlookProcess(l_0_5)) and l_0_3 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
        l_0_0 = true
      else
        if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and l_0_3 == mp.SCANREASON_ONOPEN then
          local l_0_6 = (mp.GetMOTWZone)()
          if l_0_6 == 1 or l_0_6 == 3 or l_0_6 == 4 then
            l_0_0 = true
          end
        else
          do
            if (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) == true then
              local l_0_7 = (mp.getfilename)(mp.FILEPATH_QUERY_FULL)
              do
                do
                  do
                    if #l_0_7 >= 40 then
                      local l_0_8 = (string.lower)(l_0_7:sub(2, 40))
                      if (string.find)(l_0_8, "\\program files", 1, true) or (string.find)(l_0_8, "\\windows\\", 1, true) then
                        return mp.CLEAN
                      end
                    end
                    l_0_0 = true
                    do return mp.CLEAN end
                    if not l_0_0 then
                      return mp.CLEAN
                    end
                    local l_0_9 = (mp.getfilename)(mp.FILEPATH_QUERY_PATH)
                    if (MpCommon.QueryPersistContextNoPath)("tempRaiseToSyncLofiOnMalwareDropFolder", l_0_9) then
                      if (mp.IsTrustedFile)(false) == true then
                        return mp.CLEAN
                      end
                      return mp.INFECTED
                    end
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

