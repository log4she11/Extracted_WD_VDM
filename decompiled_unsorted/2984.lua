-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2984.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if (l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  local l_0_2 = (mp.getfilesize)()
  if l_0_2 < 50000 or l_0_2 > 500000 then
    return mp.CLEAN
  end
  if l_0_1:find("^api%d%[%d%]%.gif$") == 1 or l_0_1:find("^api%d%.gif$") == 1 or l_0_1:find("^napi%d%[%d%]%.gif$") == 1 or l_0_1:find("^napi%d%.gif$") == 1 then
    (mp.set_mpattribute)("Lua:DorkbotDownloadFilename.A")
  end
end
do
  return mp.CLEAN
end

