-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21418.luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
if (this_sigattrlog[3]).matched then
  l_0_0 = (string.lower)((this_sigattrlog[3]).utf8p2)
else
  if (this_sigattrlog[4]).matched then
    l_0_0 = (string.lower)((this_sigattrlog[4]).utf8p2)
  else
    if (this_sigattrlog[5]).matched then
      l_0_0 = (string.lower)((this_sigattrlog[5]).utf8p2)
    else
      if (this_sigattrlog[6]).matched then
        l_0_0 = (string.lower)((this_sigattrlog[6]).utf8p2)
      else
        if (this_sigattrlog[7]).matched then
          l_0_0 = (string.lower)((this_sigattrlog[7]).utf8p2)
        else
          if (this_sigattrlog[8]).matched then
            l_0_0 = (string.lower)((this_sigattrlog[8]).utf8p2)
          else
            if (this_sigattrlog[9]).matched then
              l_0_0 = (string.lower)((this_sigattrlog[9]).utf8p2)
            end
          end
        end
      end
    end
  end
end
if l_0_0 ~= nil and (string.len)(l_0_0) > 8 and ((string.find)(l_0_0, "stop", 1, true) or (string.find)(l_0_0, "disabled", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN

