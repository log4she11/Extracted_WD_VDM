-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2720.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SCRIPT:Qakbot.T!lnk") then
  local l_0_0 = (string.lower)(tostring(headerpage))
  local l_0_1, l_0_2 = (string.match)(l_0_0, "\\microsoft\\(%a+)\\(%a+)%.exe")
  if l_0_1 and l_0_2 and (string.sub)(l_0_1, 0, -2) == l_0_2 then
    local l_0_3 = (string.match)(l_0_0, "(%a:\\%a%a%a%a%a[%a%d%s\\]+\\microsoft\\" .. l_0_1 .. "\\" .. l_0_2 .. "%.exe)")
    if l_0_3 then
      (mp.ReportLowfi)(l_0_3, 604029456)
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

