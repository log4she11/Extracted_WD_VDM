-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1480.luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
    if (string.match)(l_0_0, "%%appdata%%\\[^\\]+\\") == nil then
      return mp.INFECTED
    else
      if (string.match)(l_0_0, "%%appdata%%\\[^\\]+\\$") ~= nil then
        return mp.INFECTED
      else
        return mp.CLEAN
      end
    end
  end
  return mp.CLEAN
end

