-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20967.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
  local l_0_1 = (string.match)(l_0_0, "wscript%.exe\".+\"(.+%.js\"-)")
  if l_0_1 ~= nil then
    (mp.ReportLowfi)(l_0_1 .. "\000", 1863120794)
    if (this_sigattrlog[2]).matched then
      (mp.ReportLowfi)((this_sigattrlog[2]).utf8p1, 3833014443)
    end
    if (this_sigattrlog[3]).matched then
      (mp.ReportLowfi)((this_sigattrlog[3]).utf8p1, 3594107188)
    end
    if (this_sigattrlog[4]).matched then
      (mp.ReportLowfi)((this_sigattrlog[4]).utf8p1, 2156510450)
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

