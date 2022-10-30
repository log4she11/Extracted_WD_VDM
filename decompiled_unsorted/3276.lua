-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3276.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) then
  local l_0_0 = {}
  l_0_0.BM_FaceFodUninstaller_EXE = "facefoduninstaller.exe"
  l_0_0.BM_POWERSHELL_EXE = "powershell.exe"
  l_0_0.BM_RUNDLL32_EXE = "rundll32.exe"
  l_0_0.BM_OSK_EXE = "osk.exe"
  local l_0_1, l_0_2 = nil, nil
  for l_0_6,l_0_7 in pairs(l_0_0) do
    if (mp.get_mpattribute)(l_0_6) then
      l_0_1 = l_0_6
      l_0_2 = l_0_7
      break
    end
  end
  do
    if l_0_1 == nil or l_0_2 == nil then
      return mp.CLEAN
    end
    local l_0_8 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
    if l_0_8 == nil then
      return mp.CLEAN
    end
    if #l_0_2 > 0 and (string.lower)(l_0_2) == l_0_8 then
      return mp.CLEAN
    end
    local l_0_9 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
    l_0_9 = normalize_path(l_0_9)
    local l_0_10 = l_0_9 .. "\\" .. l_0_8
    do
      local l_0_11 = (MpCommon.QueryPersistContext)(l_0_10, l_0_1)
      if not l_0_11 then
        (MpCommon.AppendPersistContext)(l_0_10, l_0_1, 100)
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

