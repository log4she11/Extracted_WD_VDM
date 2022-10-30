-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21686.luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 300000000 then
  return mp.CLEAN
end
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
  local l_0_1 = (string.lower)((this_sigattrlog[1]).utf8p2)
  l_0_1 = (string.gsub)(l_0_1, " ", "")
  l_0_1 = (string.gsub)(l_0_1, "\"", "")
  if l_0_0 ~= l_0_1 then
    return mp.CLEAN
  end
end
do
  local l_0_2 = (string.lower)((bm.get_imagepath)())
  if l_0_2 then
    if (string.find)(l_0_2, "\\windows\\", 1, true) or (string.find)(l_0_2, "\\program files", 1, true) or (string.find)(l_0_2, "\\programdata\\", 1, true) or (string.find)(l_0_2, "\\blender", 1, true) or (string.find)(l_0_2, "\\glens", 1, true) or (string.find)(l_0_2, "\\microsoft.azure.", 1, true) then
      return mp.CLEAN
    end
    ;
    (bm.add_action)("EmsScan", 3000)
    return mp.INFECTED
  end
  return mp.CLEAN
end

