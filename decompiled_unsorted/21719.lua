-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21719.luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0.ms = ""
l_0_0.dx = ""
local l_0_1, l_0_2, l_0_3, l_0_4 = nil, nil, nil, nil
if (this_sigattrlog[2]).matched then
  l_0_1 = (string.lower)((this_sigattrlog[2]).utf8p1)
else
  if (this_sigattrlog[3]).matched then
    l_0_1 = (string.lower)((this_sigattrlog[3]).utf8p1)
  else
    if (this_sigattrlog[4]).matched then
      l_0_1 = (string.lower)((this_sigattrlog[4]).utf8p1)
    else
      if (this_sigattrlog[5]).matched then
        l_0_1 = (string.lower)((this_sigattrlog[5]).utf8p1)
      else
        if (this_sigattrlog[6]).matched then
          l_0_1 = (string.lower)((this_sigattrlog[6]).utf8p1)
        else
          if (this_sigattrlog[7]).matched then
            l_0_1 = (string.lower)((this_sigattrlog[7]).utf8p1)
          end
        end
      end
    end
  end
end
if (this_sigattrlog[8]).matched then
  l_0_3 = (string.lower)((this_sigattrlog[8]).utf8p2)
else
  if (this_sigattrlog[9]).matched then
    l_0_3 = (string.lower)((this_sigattrlog[9]).utf8p2)
  end
end
if l_0_1 ~= nil and l_0_3 ~= nil then
  l_0_2 = (string.match)(l_0_1, "\\([^\\]+)$")
  l_0_4 = l_0_2:sub(1, 2)
  if l_0_0[l_0_4] then
    l_0_3 = (string.match)(l_0_3, "\\([^\\]+)$")
    if l_0_2 == l_0_3 then
      (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)(l_0_1), 501759711)
      return mp.INFECTED
    end
  end
end
return mp.CLEAN

