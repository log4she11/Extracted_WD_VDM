-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/667.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN and (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) == true then
  local l_0_1 = (string.lower)((mp.getfilename)())
  local l_0_2 = "|" .. (string.sub)(l_0_1, -4) .. "|"
  local l_0_3 = "|.exe|.scr|.cpl|.bat|.com|.cmd|.pif|.ps1|.vbs|"
  if l_0_3:find(l_0_2, 1, true) == nil then
    return mp.CLEAN
  end
  local l_0_4 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if l_0_4 == nil then
    return mp.CLEAN
  end
  if (string.len)(l_0_4) >= 10 then
    return mp.CLEAN
  end
  if (string.sub)(l_0_4, 1, 8) == "\\device\\" then
    l_0_4 = (MpCommon.PathToWin32Path)(l_0_4)
  end
  if l_0_4:find(":\\recycle", 1, true) or l_0_4:find(":\\$.recycle.bin", 1, true) then
    (mp.set_mpattribute)("Lua:NewAutoExec.AA")
    return mp.CLEAN
  end
  do
    if l_0_4:find(":\\windows\\", 1, true) then
      local l_0_5 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%WINDIR%"))
      if l_0_5 and (l_0_5 == l_0_4 or l_0_5 .. "\\system32" == l_0_4 or l_0_5 .. "\\syswow64" == l_0_4 or l_0_5 .. "\\temp" == l_0_4) then
        (mp.set_mpattribute)("Lua:NewAutoExec.BA")
      end
      return mp.CLEAN
    end
    do
      if l_0_4:find(":\\program files", 1, true) then
        local l_0_6 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%PROGRAMFILES%"))
        if l_0_6 and (l_0_4:find(l_0_6 .. "\\common files", 1, true) or l_0_4:find(l_0_6 .. " (x86)\\common files", 1, true)) then
          (mp.set_mpattribute)("Lua:NewAutoExec.CA")
        end
        return mp.CLEAN
      end
      do
        if l_0_4:find("\\temp", 1, true) then
          local l_0_7 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%TEMP%"))
          if l_0_7 and l_0_4:find(l_0_7, 1, true) then
            (mp.set_mpattribute)("Lua:NewAutoExec.DA")
          end
          return mp.CLEAN
        end
        do
          if l_0_4:find("\\appdata", 1, true) or l_0_4:find("\\application data", 1, true) then
            local l_0_8 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%APPDATA%"))
            if l_0_8 and l_0_4:find(l_0_8, 1, true) then
              (mp.set_mpattribute)("Lua:NewAutoExec.EA")
            end
            return mp.CLEAN
          end
          return mp.CLEAN
        end
      end
    end
  end
end

