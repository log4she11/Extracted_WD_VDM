-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/190.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC19: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).reg_block_usermode and (this_sigattrlog[2]).reg_block_src ~= bm.BM_REG_BLOCK_TAMPER_PROTECTION then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC40: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).reg_block_usermode and (this_sigattrlog[3]).reg_block_src ~= bm.BM_REG_BLOCK_TAMPER_PROTECTION then
  return mp.CLEAN
end
do return mp.CLEAN end
local l_0_0, l_0_1 = (bm.get_process_relationships)()
if l_0_0 then
  for l_0_5,l_0_6 in ipairs(l_0_0) do
    if l_0_6.ppid and (mp.bitand)(l_0_6.reason_ex, 1) == 1 then
      (bm.add_related_process)(l_0_6.ppid)
    end
  end
end
do
  return mp.INFECTED
end

