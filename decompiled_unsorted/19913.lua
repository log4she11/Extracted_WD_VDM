-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19913.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[5]).matched then
  local l_0_0 = nil
  if l_0_0 ~= nil and (string.len)(l_0_0) > 3 then
    local l_0_1 = (mp.GetExecutablesFromCommandLine)(l_0_0)
    if l_0_1 ~= nil then
      for l_0_5,l_0_6 in ipairs(l_0_1) do
        l_0_6 = (mp.ContextualExpandEnvironmentVariables)(l_0_6)
        ;
        (bm.add_related_file)(l_0_6)
      end
    end
  end
end
do
  l_0_1 = mp
  l_0_1 = l_0_1.INFECTED
  return l_0_1
end

