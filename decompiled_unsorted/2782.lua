-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2782.luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["iexplore.exe"] = true
l_0_0["browser_broker.exe"] = true
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_1 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  if l_0_0[l_0_2] == true then
    local l_0_3 = (string.lower)((mp.getfilename)())
    if (string.find)(l_0_3, "flash%s*player.*.hta$") ~= nil and (mp.get_mpattribute)("Lua:HTAExt") and (mp.get_mpattribute)("RPF:TopLevelFile") then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

