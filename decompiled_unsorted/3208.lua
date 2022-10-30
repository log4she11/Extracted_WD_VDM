-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3208.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SCRIPT:Trojan:Win32/Lodbak.gen!lnk") then
  if (mp.readu_u32)(headerpage, 1) ~= 76 then
    return mp.CLEAN
  end
  if (mp.readu_u32)(headerpage, 57) ~= 7 then
    return mp.CLEAN
  end
  if (mp.readu_u32)(headerpage, 61) ~= 7 then
    return mp.CLEAN
  end
  local l_0_0 = tostring(headerpage)
  local l_0_1 = (string.find)(l_0_0, "\\rundll32.exe%z%z.%z\160%z\\%z")
  if l_0_1 == nil then
    return mp.CLEAN
  end
  local l_0_2 = (string.lower)((mp.getfilename)())
  if (string.find)(l_0_2, "%(%d+gb%)%.lnk") then
    return mp.INFECTED
  end
  return mp.LOWFI
end
do
  if (mp.get_mpattribute)("SCRIPT:Trojan:Win32/Lodbak.gen2!lnk") then
    if (mp.readu_u32)(headerpage, 1) ~= 76 then
      return mp.CLEAN
    end
    if (mp.readu_u32)(headerpage, 57) ~= 7 then
      return mp.CLEAN
    end
    local l_0_3 = tostring(headerpage)
    local l_0_4 = (string.find)(l_0_3, "r%zu%zn%zd%zl%zl%z3%z2%z%.%ze%zx%ze%z%z%z.%z%z%z.%z\160%z\\%z")
    if l_0_4 == nil then
      return mp.CLEAN
    end
    local l_0_5 = (string.lower)((mp.getfilename)())
    if (string.find)(l_0_5, "%(%d+gb%)%.lnk") then
      return mp.INFECTED
    end
    return mp.LOWFI
  end
  do
    return mp.CLEAN
  end
end

