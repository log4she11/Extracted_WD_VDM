-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2651.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
do
  if l_0_0 ~= nil and l_0_0:len() > 28 then
    local l_0_1 = (string.lower)(l_0_0)
    if (string.sub)(l_0_1, -28) == "\\start menu\\programs\\startup" then
      if (mp.get_mpattribute)("BM_LNK_FILE") then
        (mp.set_mpattribute)("Lua:LnkFileInStartupFolder")
      end
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

