-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2153.luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = (string.lower)((string.sub)((this_sigattrlog[1]).wp1, -4))
    if l_0_0 == ".ttf" or l_0_0 == ".fon" then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

