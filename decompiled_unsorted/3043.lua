-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3043.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if l_0_1:find("\\appdata\\local\\microsoft\\windows\\temporary internet files", 1, true) ~= nil or l_0_1:find("\\appdata\\local\\microsoft\\windows\\inetcache", 1, true) ~= nil then
    local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
    if l_0_2 == "cmd.exe" then
      if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
        (mp.set_mpattribute)("Lua:ContextCmdDropTIF.A")
      else
        ;
        (mp.set_mpattribute)("Lua:ContextCmdAccessTIF.A")
      end
    end
  end
end
do
  return mp.CLEAN
end

