-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3461.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 4194304 then
  return mp.CLEAN
end
local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1 == nil or (string.len)(l_0_1) < 25 then
  return mp.CLEAN
end
if l_0_2 == nil or (string.len)(l_0_2) < 15 then
  return mp.CLEAN
end
local l_0_3 = l_0_2:sub(-4)
local l_0_4 = l_0_2:sub(-3)
local l_0_5 = {}
l_0_5[".jse"] = true
l_0_5[".vbs"] = true
l_0_5[".wsf"] = true
l_0_5[".vbe"] = true
l_0_5[".hta"] = true
l_0_5[".mht"] = true
l_0_5[".bat"] = true
l_0_5[".ps1"] = true
l_0_5[".cmd"] = true
l_0_5[".url"] = true
l_0_5[".jar"] = true
l_0_5[".lnk"] = true
l_0_5[".exe"] = true
l_0_5[".scr"] = true
l_0_5[".pif"] = true
l_0_5[".docx"] = true
l_0_5[".xlsx"] = true
l_0_5[".doc"] = true
l_0_5[".xls"] = true
l_0_5[".rtf"] = true
l_0_5.docm = true
l_0_5.xlsm = true
l_0_5.ppam = true
l_0_5.pptm = true
l_0_5.ppsm = true
l_0_5.potm = true
l_0_5[".js"] = true
if l_0_5[l_0_3] == true or l_0_5[l_0_4] == true then
  local l_0_6 = {}
  l_0_6[".zip)->"] = "%.zip%)%->.+"
  l_0_6[".rar)->"] = "%.rar%)%->.+"
  l_0_6[".7z)->"] = "%.7z%)%->.+"
  l_0_6[".iso)->"] = "%.iso%)%->.+"
  l_0_6[".arj)->"] = "%.arj%)%->.+"
  l_0_6[".gz)->"] = "%.gz%)%->.+"
  l_0_6[".ace)->"] = "%.ace%)%->.+"
  l_0_6[".z)->"] = "%.z%)%->.+"
  l_0_6[".xz)->"] = "%.xz%)%->.+"
  l_0_6[".bz)->"] = "%.bz%)%->.+"
  l_0_6[".rev)->"] = "%.rev%)%->.+"
  l_0_6[".r00)->"] = "%.r00%)%->.+"
  for l_0_10,l_0_11 in pairs(l_0_6) do
    if (string.find)(l_0_2, l_0_10, 1, true) then
      local l_0_12 = (string.match)(l_0_2, l_0_11)
      if l_0_12 == nil or l_0_12:len() < 12 then
        return mp.CLEAN
      end
      local l_0_13 = l_0_10:len() + 1
      if l_0_12:len() <= l_0_13 + 5 then
        return mp.CLEAN
      end
      local l_0_14 = (string.sub)(l_0_12, l_0_13, -5)
      if l_0_14 == nil then
        return mp.CLEAN
      end
      local l_0_15 = l_0_14 .. l_0_10
      if (string.find)(l_0_2, l_0_15, 1, true) == nil then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end
do
  l_0_6 = mp
  l_0_6 = l_0_6.CLEAN
  return l_0_6
end

