-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3350.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or #l_0_0 < 18 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "->", 1, true) == nil then
  return mp.CLEAN
end
local l_0_1 = nil
if (string.find)(l_0_0, "/embeddings/oleobject", 1, true) ~= nil and (string.find)(l_0_0, ".bin->(ole stream", 1, true) ~= nil then
  l_0_1 = "Lua:Context/OfficeObjectFileAttachment.A!"
else
  if (string.find)(l_0_0, "->(ole stream ", 1, true) ~= nil and (string.find)(l_0_0, ")->", 1, true) ~= nil then
    l_0_1 = "Lua:Context/OfficeObjectFileAttachment.B!"
  else
    if (string.find)(l_0_0, "->(rtf0", 1, true) ~= nil and (string.find)(l_0_0, ")->", 1, true) ~= nil then
      l_0_1 = "Lua:Context/RtfFileAttachment.A!"
    else
      return mp.CLEAN
    end
  end
end
if l_0_1 == nil or #l_0_1 < 5 then
  return mp.CLEAN
end
if (string.sub)(l_0_0, #l_0_0 - 3, #l_0_0 - 3) == "." then
  local l_0_2 = (string.sub)(l_0_0, -3)
  ;
  (mp.set_mpattribute)(l_0_1 .. l_0_2)
  return mp.INFECTED
else
  do
    do
      if (string.sub)(l_0_0, #l_0_0 - 2, #l_0_0 - 2) == "." then
        local l_0_3 = (string.sub)(l_0_0, -2)
        ;
        (mp.set_mpattribute)(l_0_1 .. l_0_3)
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

