-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2273.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
  local l_0_1 = (string.match)(l_0_0, "winword%.exe\".+\"(.+%.doc)") .. "\000"
  ;
  (mp.ReportLowfi)(l_0_1, 2736322605)
end
do
  return mp.INFECTED
end

