-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19944.luac 

-- params : ...
-- function num : 0
do
  if ((hstrlog[9]).matched and not (hstrlog[10]).matched) or (hstrlog[11]).matched then
    local l_0_0, l_0_1 = 0 + 1 + 1 + 1
  end
  -- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

  if mp.HSTR_WEIGHT >= 100 and l_0_0 >= 2 then
    return mp.INFECTED
  end
  -- DECOMPILER ERROR at PC28: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 >= 3 and (hstrlog[12]).matched then
    return mp.INFECTED
  end
  ;
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
  return mp.CLEAN
end

