-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3037.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  if not peattributes.isdll and (string.sub)(l_0_2, -4) == ".dll" and ((string.sub)(l_0_1, -5) == "\\temp" or (string.sub)(l_0_1, -9) == "\\temp\\low") then
    local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
    if l_0_3 == "svchost.exe" then
      (mp.set_mpattribute)("Lua:ContextualDropSvchostTemp")
    end
  end
end
do
  return mp.CLEAN
end

