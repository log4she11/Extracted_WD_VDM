-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2845.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
    if l_0_1:match("^pps[-]qq[-]19.exe$") or l_0_1:match("^05a00036.exe$") or l_0_1:match("^ucbrabs.exe$") then
      if (mp.get_mpattribute)("SIGATTR:VirTool:Win32/LoadLibChg1stLetter") then
        (mp.set_mpattribute)("Lowfi:Lua:MytonelFilenameAndObfus")
      end
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

