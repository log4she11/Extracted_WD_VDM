-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3399.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_1 ~= nil and l_0_1:sub(-4) == ".exe" and ((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)):lower() == "powershell.exe" then
    if l_0_0:find("\\appdata\\", 1, true) ~= nil then
      (mp.set_mpattribute)("LUA:PowershellDropsNewPEInAppDataPath.A")
    end
    if IsChainNPath(l_0_0) == false then
      if (MpCommon.QueryPersistContextNoPath)("CLF_AM", "OfcUsrTruDocRec") then
        (mp.set_mpattribute)("Lua:OfcUsrTruDocRecPsNewPeDrop")
      end
      local l_0_2 = false
      if (MpCommon.QueryPersistContextNoPath)("CLF_AM", "CLF_AM_EC") then
        (mp.set_mpattribute)("Lua:EmailClientChainPsNewPeDrop")
        l_0_2 = true
      end
      if (MpCommon.QueryPersistContextNoPath)("CLF_AM", "CLF_AM_WM") then
        (mp.set_mpattribute)("Lua:WebMailChainPsNewPeDrop")
        l_0_2 = true
      end
      if l_0_2 then
        local l_0_3 = (MpCommon.GetPersistContextNoPath)("CLF_IC")
        for l_0_7,l_0_8 in ipairs(l_0_3) do
          (mp.ReportLowfi)(l_0_8, 1933116662)
        end
      end
      do
        do
          l_0_3 = mp
          l_0_3 = l_0_3.INFECTED
          do return l_0_3 end
          l_0_0 = mp
          l_0_0 = l_0_0.CLEAN
          return l_0_0
        end
      end
    end
  end
end

