-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18015.luac 

-- params : ...
-- function num : 0
do
  if (hstrlog[6]).matched and (hstrlog[7]).matched then
    local l_0_0 = mp.HSTR_WEIGHT - 2
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 >= 5 then
    return mp.INFECTED
  end
  ;
  (mp.set_mpattribute)("do_exhaustivehstr_rescan_vbinject_ky")
  return mp.CLEAN
end

