-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1051.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) ~= true then
  return mp.CLEAN
end
if not peattributes.isexe or peattributes.isdriver or peattributes.no_security == false or peattributes.no_fixups == false then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0:find("\\public$") ~= nil or l_0_0:find("\\microsoft\\systemcertificates\\my\\certificates$") then
  (mp.set_mpattribute)("MpRequestHookwowM")
  return mp.INFECTED
end
return mp.CLEAN

