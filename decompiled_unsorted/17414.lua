-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17414.luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = (string.lower)((this_sigattrlog[1]).p1)
    if (string.find)(l_0_0, "^%d%d%d%d+$") then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
  return mp.CLEAN
end

