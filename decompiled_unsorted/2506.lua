-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2506.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  do
    if l_0_0 ~= nil then
      local l_0_2 = nil
      -- DECOMPILER ERROR at PC37: Confused about usage of register: R1 in 'UnsetPending'

      if l_0_0:match("/e:javascript%S?(\"?[^/]*\")") ~= nil and (sysio.IsFileExists)((mp.ContextualExpandEnvironmentVariables)(l_0_0:match("/e:javascript%S?(\"?[^/]*\")"))) == true then
        (bm.add_related_file)((mp.ContextualExpandEnvironmentVariables)(l_0_0:match("/e:javascript%S?(\"?[^/]*\")")))
      end
    end
    return mp.INFECTED
  end
end

