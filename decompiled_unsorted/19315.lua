-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19315.luac 

-- params : ...
-- function num : 0
do
  if ((hstrlog[1]).matched and not (hstrlog[2]).matched) or (hstrlog[3]).matched then
    local l_0_0 = 0 + 1 + 1 + 1
  end
  -- DECOMPILER ERROR at PC37: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC39: Confused about usage of register: R0 in 'UnsetPending'

  if (((hstrlog[4]).matched and not (hstrlog[5]).matched) or (mp.getfilesize)() < 200000) and (l_0_0 == 3 or l_0_0 < 2 or 0 + 1 + 1 >= 1) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

