-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2557.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_AMSI then
  local l_0_1, l_0_2 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
  if l_0_1 and l_0_2 ~= nil then
    local l_0_3 = (string.lower)(l_0_2)
    if (string.find)(l_0_3, "ae_scan.vbs") or (string.find)(l_0_3, "manageengine\\assetexplorer\\bin\\", 1, true) then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

