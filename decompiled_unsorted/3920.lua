-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3920.luac 

-- params : ...
-- function num : 0
local l_0_0 = nil
local l_0_1 = nil
do
  if (this_sigattrlog[2]).matched then
    local l_0_2 = "docker_start"
    l_0_1 = (string.match)((string.lower)((this_sigattrlog[2]).utf8p1), "/([0-9a-f]+)/hosts$")
  end
  -- DECOMPILER ERROR at PC22: Confused about usage of register: R1 in 'UnsetPending'

  if l_0_1 ~= nil then
    (MpCommon.AppendPersistContextNoPath)(l_0_2, l_0_1, 3600)
  end
  return mp.CLEAN
end

