-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1833.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 then
  if l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    return mp.CLEAN
  end
  local l_0_1 = (mp.getfilename)()
  if #l_0_1 > 4 and (string.sub)(l_0_1, 1, 1) ~= "/" then
    return mp.CLEAN
  end
  if (mp.IsTrustedFile)(false) == true then
    return mp.CLEAN
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

