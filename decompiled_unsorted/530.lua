-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/530.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_parent_filehandle)()
if not (mp.is_handle_nil)(l_0_0) then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_1 == nil or #l_0_1 <= 3 then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
local l_0_2 = (MpCommon.GetPersistContextCount)(l_0_1)
if l_0_2 <= 0 or l_0_2 > 100 then
  return mp.CLEAN
end
if (MpCommon.QueryPersistContext)(l_0_1, "RegistryValueDataToFilePersistContext.A") or (MpCommon.QueryPersistContext)(l_0_1, "BitsadminTargetForExec") or (MpCommon.QueryPersistContext)(l_0_1, "FilePersistContextToMpAttribute.A") then
  local l_0_3 = (MpCommon.GetPersistContext)(l_0_1)
  if l_0_3 == nil then
    return mp.CLEAN
  end
  for l_0_7,l_0_8 in ipairs(l_0_3) do
    if #l_0_8 >= 8 and (string.sub)(l_0_8, 0, 4) == "BM_M" then
      (mp.set_mpattribute)(l_0_8)
    end
  end
end
do
  l_0_3 = mp
  l_0_3 = l_0_3.CLEAN
  return l_0_3
end

