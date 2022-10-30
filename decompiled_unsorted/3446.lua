-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3446.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattributesubstring)("PUA:") and not (mp.get_mpattributesubstring)("RPF:PUA:PREDICT:") and not (mp.get_mpattributesubstring)("RPF:PEEXEHasIOAVURL") then
  return mp.CLEAN
end
local l_0_0 = false
local l_0_1 = false
local l_0_2 = false
local l_0_3 = false
local l_0_4 = false
if (mp.get_mpattributesubstring)("RPF:PEEXEHasIOAVURL") then
  l_0_1 = true
else
  local l_0_5 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_LOWERCASE, mp.FILEPATH_QUERY_PATH))
  if l_0_5 == nil then
    return mp.CLEAN
  end
  if (string.sub)(l_0_5, 1, 8) == "\\device\\" then
    l_0_5 = (MpCommon.PathToWin32Path)(l_0_5)
  end
  if l_0_5 == nil then
    return mp.CLEAN
  end
  do
    do
      if (string.sub)(l_0_5, -14) == ":\\windows\\temp" then
        local l_0_6 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_LOWERCASE, mp.FILEPATH_QUERY_FNAME))
        if (string.find)(l_0_6, "^tmp%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x$") then
          return mp.CLEAN
        end
      end
      if (string.find)(l_0_5, ":\\users\\[^\\]+\\downloads\\", 1, false) or (string.sub)(l_0_5, -10) == "\\downloads" then
        l_0_1 = true
      else
        if (string.find)(l_0_5, "\\temp\\", 1, true) or (string.sub)(l_0_5, -5) == "\\temp" then
          l_0_2 = true
        else
          if (string.find)(l_0_5, ":\\users\\[^\\]+\\desktop", 1, false) then
            l_0_3 = true
          else
            if (string.find)(l_0_5, ":\\program files", 1, true) or (string.find)(l_0_5, ":\\programdata", 1, true) or (string.find)(l_0_5, ":\\windows", 1, true) or (string.find)(l_0_5, ":\\users\\[^\\]+\\appdata", 1, false) then
              l_0_4 = true
            end
          end
        end
      end
      if l_0_0 or l_0_1 or l_0_2 or l_0_3 or not l_0_4 then
        (mp.set_mpattribute)("CONTEXT:PUA:InstallContextMet")
        if l_0_0 or l_0_1 then
          (mp.set_mpattribute)("CONTEXT:PUA:InstallContextMet:Download")
        end
      end
      return mp.CLEAN
    end
  end
end

