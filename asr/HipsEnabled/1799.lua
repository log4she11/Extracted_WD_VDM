-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1799.luac 

-- params : ...
-- function num : 0
if (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35") then
  reportSessionInformation()
  add_parents()
  local l_0_0 = mp.CLEAN
  if (this_sigattrlog[1]).matched then
    l_0_0 = reportGenericRansomware("gend_ransom_meta")
  else
    if (this_sigattrlog[2]).matched then
      l_0_0 = reportGenericRansomware("genb_ransom_meta")
    end
  end
  if l_0_0 == mp.INFECTED then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

