-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2511.luac 

-- params : ...
-- function num : 0
do
  if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN then
    local l_0_0 = (mp.IOAVGetDownloadUrl)()
    if l_0_0 ~= nil and (string.len)(l_0_0) > 30 and l_0_0:find(":3000/attacks/download?", 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

