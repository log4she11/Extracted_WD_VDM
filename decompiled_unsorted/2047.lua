-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2047.luac 

-- params : ...
-- function num : 0
SetAttributeFromClassifierScores = function(l_1_0, l_1_1)
  -- function num : 0_0
  for l_1_5,l_1_6 in pairs(l_1_1) do
    if l_1_6 <= l_1_0 then
      (mp.set_mpattribute)(l_1_5)
    end
  end
end


