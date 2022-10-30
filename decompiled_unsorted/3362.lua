-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3362.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 ~= nil and #l_0_0 > 10 then
  local l_0_1 = (mp.getfilesize)()
  if l_0_1 < 100 then
    return mp.CLEAN
  end
  l_0_0 = normalize_path(l_0_0)
  if l_0_0 == nil then
    return mp.CLEAN
  end
  local l_0_2 = {}
  l_0_2[":\\programdata"] = "programdata"
  l_0_2["\\appdata\\roaming"] = "appdata"
  l_0_2[":\\program files\\common files"] = "commonprogramfiles"
  l_0_2[":\\program files (x86)\\common files"] = "commonprogramfilesx86"
  l_0_2["\\appdata\\local\\temp"] = "temp"
  l_0_2["\\appdata\\local"] = "localappdata"
  l_0_2["\\appdata\\locallow"] = "locallowappdata"
  l_0_2[":\\program files"] = "programfiles"
  l_0_2[":\\program files (x86)"] = "programfilesx86"
  l_0_2[":\\users\\public"] = "public"
  l_0_2[":\\windows\\system32\\wbem"] = "wbem"
  l_0_2[":\\windows\\syswow64\\wbem"] = "wbem"
  l_0_2[":\\windows\\servicing"] = "servicing"
  l_0_2[":\\windows\\system32"] = "sysdir"
  l_0_2[":\\windows\\syswow64"] = "syswow64"
  l_0_2[":\\windows"] = "windir"
  for l_0_6,l_0_7 in pairs(l_0_2) do
    if #l_0_6 < #l_0_0 and l_0_0:find(l_0_6, 1, true) then
      local l_0_8 = "Lua:Context/FileInPath.A!" .. l_0_7
      ;
      (mp.set_mpattribute)(l_0_8)
      return mp.CLEAN
    end
  end
end
do
  l_0_1 = mp
  l_0_1 = l_0_1.CLEAN
  return l_0_1
end

