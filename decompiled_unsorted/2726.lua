-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2726.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  if l_0_2 == "narrator.exe" then
    local l_0_3 = (string.lower)((string.sub)(l_0_1, -9))
    if l_0_3 == "\\system32" or l_0_3 == "\\syswow64" then
      (mp.set_mpattribute)("BM_MODIFIED_SYSTEM_TOOL")
    end
  end
end
do
  return mp.CLEAN
end

