-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20139.luac 

-- params : ...
-- function num : 0
if peattributes.isdll then
  return mp.CLEAN
end
do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = (string.lower)((this_sigattrlog[1]).p1)
    if (string.find)(l_0_0, "data source=%w%w[%w%.%-]+") and (string.find)(l_0_0, "user id=%p?%w...+;") and (string.find)(l_0_0, "password=%p?%w%w..+;") then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

