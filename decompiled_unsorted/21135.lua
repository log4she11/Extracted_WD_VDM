-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21135.luac 

-- params : ...
-- function num : 0
do
  if ((((((not (hstrlog[3]).matched or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (hstrlog[6]).matched) and not (hstrlog[7]).matched) or (hstrlog[8]).matched) and not (hstrlog[9]).matched) or (hstrlog[10]).matched then
    local l_0_0 = 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1
  end
  -- DECOMPILER ERROR at PC83: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC85: Confused about usage of register: R0 in 'UnsetPending'

  if (((not (hstrlog[11]).matched or (hstrlog[12]).matched) and not (hstrlog[13]).matched) or (mp.getfilesize)() < 250000) and ((hstrlog[1]).matched or (((hstrlog[2]).matched and l_0_0 >= 6) or l_0_0 < 6 or 0 + 1 + 1 + 1 == 3)) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

