-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3959.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_2, l_0_3, l_0_4 = nil
do
  if (this_sigattrlog[2]).matched then
    local l_0_1 = nil
    l_0_1 = (string.match)((string.lower)((this_sigattrlog[2]).utf8p1), "/([0-9a-f]+)/init.pid$")
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC22: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC29: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_1 == nil or not (MpCommon.QueryPersistContextNoPath)("docker_create", l_0_1) or not (MpCommon.QueryPersistContextNoPath)("docker_start", l_0_1) then
    return mp.CLEAN
  end
  return mp.INFECTED
end

