-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3249.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SCRIPT:Exploit:HTML/NeutrinoEK.J!obj") then
  local l_0_0 = (string.lower)(tostring(headerpage))
  local l_0_1 = (string.match)(l_0_0, "(<object .-classid=\"?clsid:d27cdb6e.-</object>)")
  if l_0_1 then
    local l_0_2 = (string.match)(l_0_1, "<object.- id=\"?(%l+)\"?.->")
    local l_0_3 = (string.match)(l_0_1, "<object.- name=\"?(%l+)\"?.->")
    local l_0_4 = (string.match)(l_0_1, "<object.- height=\"(%d+)\".->")
    local l_0_5 = (string.match)(l_0_1, "<object.- width=\"(%d+).->")
    if l_0_2 and l_0_4 and l_0_5 then
      local l_0_6 = (string.match)(l_0_1, "(<param .-name=\"movie\".->)")
      if l_0_6 then
        local l_0_7 = (string.match)(l_0_6, "value=\"(/%w+/.-)\".->")
        if l_0_7 then
          local l_0_8 = (string.match)(l_0_1, "(<embed .-allowscriptaccess=\"samedomain\".->)")
          if l_0_8 and l_0_2 == l_0_3 and (string.match)(l_0_8, "id=\"(%l+)\".->") == (string.match)(l_0_8, "name=\"(%l+)\".->") and l_0_7 == (string.match)(l_0_8, "src=\"(/%w+/.-)\".->") and l_0_5 == (string.match)(l_0_8, "width=\"(%d+)\".->") and l_0_4 == (string.match)(l_0_8, "height=\"(%d+)\".->") then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
do
  return mp.CLEAN
end

