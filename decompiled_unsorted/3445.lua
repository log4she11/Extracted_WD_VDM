-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3445.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1 = (mp.getfilesize)()
  if l_0_1 == nil then
    return mp.CLEAN
  end
  local l_0_2, l_0_3 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_3 == nil or l_0_2 == nil then
    return mp.CLEAN
  end
  if l_0_3 == "amsi.dll" then
    local l_0_4 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
    local l_0_5 = l_0_4:match("(.*).exe")
    if l_0_5:find("rufus", 1, true) then
      l_0_5 = "rufus"
    end
    if l_0_5:find("recover", 1, true) then
      l_0_5 = "recovery"
    end
    ;
    (mp.set_mpattribute)("Lua:AmsiDll!" .. l_0_5)
    if (mp.IsTrustedFile)() then
      (mp.set_mpattribute)("Lua:AmsiDllTrusted")
    else
      ;
      (mp.set_mpattribute)("Lua:AmsiDllNotTrusted")
    end
    if not l_0_2:find("\\device\\harddiskvolume", 1, true) and not l_0_2:find(":\\windows\\winsxs\\", 1, true) then
      if l_0_2:find(":\\windows\\system32\\", 1, true) or l_0_2:find(":\\windows\\syswow64", 1, true) then
        (mp.set_mpattribute)("Lua:AmsiDllInKnownLocation")
      else
        ;
        (mp.set_mpattribute)("Lua:AmsiDllInNonStandardLocation")
      end
    end
    if not (mp.get_mpattribute)("BM_MZ_FILE") then
      (mp.set_mpattribute)("Lua:AmsiDllIsNonPE")
    end
    if l_0_1 < 10240 or l_0_1 > 204800 then
      (mp.set_mpattribute)("Lua:AmsiDllIsNonStandardSize")
      if l_0_1 == 0 then
        (mp.set_mpattribute)("Lua:AmsiDllZeroFileSize")
      end
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

