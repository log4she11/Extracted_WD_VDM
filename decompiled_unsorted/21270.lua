-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21270.luac 

-- params : ...
-- function num : 0
if peattributes.hasappendeddata then
  local l_0_0 = (mp.getfilesize)()
  -- DECOMPILER ERROR at PC39: Unhandled construct in 'MakeBoolean' P3

  -- DECOMPILER ERROR at PC39: Unhandled construct in 'MakeBoolean' P3

  -- DECOMPILER ERROR at PC39: Unhandled construct in 'MakeBoolean' P3

  if (l_0_0 >= 6402040 and l_0_0 <= 6591488 and pehdr.SizeOfImage == 622592) or l_0_0 < 57671680 or l_0_0 >= 14188544 and l_0_0 <= 14254080 and pehdr.SizeOfImage == 921600 then
    local l_0_1 = pehdr.NumberOfSections
    local l_0_2 = (pesecs[l_0_1]).PointerToRawData + (pesecs[l_0_1]).SizeOfRawData
    ;
    (mp.readprotection)(false)
    local l_0_3 = (mp.readfile)(l_0_2, 16)
    if l_0_3 == "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000" then
      (mp.set_mpattribute)("AutoItIgnoreMaxSizes")
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

