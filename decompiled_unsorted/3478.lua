-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3478.luac 

-- params : ...
-- function num : 0
if mp.SCANREASON_ONMODIFIEDHANDLECLOSE == (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
  local l_0_1 = getCachePaths(l_0_0)
  if l_0_1 ~= nil then
    local l_0_2, l_0_3 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
    local l_0_4 = {}
    l_0_4[".pdf"] = true
    l_0_4[".doc"] = true
    l_0_4[".xls"] = true
    l_0_4[".rtf"] = true
    l_0_4[".docm"] = true
    l_0_4[".xlsm"] = true
    l_0_4[".ppam"] = true
    l_0_4[".pptm"] = true
    l_0_4[".ppsm"] = true
    l_0_4[".potm"] = true
    l_0_4[".xlsx"] = true
    l_0_4[".docx"] = true
    l_0_4[".xlsb"] = true
    l_0_4[".xltx"] = true
    l_0_4[".xltm"] = true
    l_0_4[".xlt"] = true
    l_0_4[".xlam"] = true
    l_0_4[".xla"] = true
    l_0_4[".dotx"] = true
    l_0_4[".dotm"] = true
    l_0_4[".odt"] = true
    l_0_4[".pptx"] = true
    l_0_4[".pps"] = true
    l_0_4[".ppsx"] = true
    l_0_4[".jse"] = true
    l_0_4[".vbs"] = true
    l_0_4[".wsf"] = true
    l_0_4[".vbe"] = true
    l_0_4[".hta"] = true
    l_0_4[".js"] = true
    l_0_4[".mht"] = true
    l_0_4[".lnk"] = true
    l_0_4[".bat"] = true
    l_0_4[".ps1"] = true
    l_0_4[".zip"] = true
    l_0_4[".rar"] = true
    l_0_4[".7z"] = true
    l_0_4[".iso"] = true
    l_0_4[".arj"] = true
    l_0_4[".gz"] = true
    l_0_4[".ace"] = true
    l_0_4[".img"] = true
    l_0_4[".exe"] = true
    l_0_4[".scr"] = true
    l_0_4[".pif"] = true
    l_0_4[".htm"] = true
    l_0_4[".html"] = true
    l_0_4[".jar"] = true
    local l_0_5, l_0_6, l_0_7 = nil, nil, nil
    for l_0_11,l_0_12 in pairs(l_0_1) do
      if l_0_2:find(l_0_12, 1, true) ~= nil then
        l_0_5 = (string.sub)(l_0_3, -3)
        l_0_6 = (string.sub)(l_0_3, -4)
        l_0_7 = (string.sub)(l_0_3, -5)
        if l_0_4[l_0_5] == true or l_0_4[l_0_6] == true or l_0_4[l_0_7] == true then
          (MpCommon.AppendPersistContextNoPath)("CLF_AM", "CLF_AM_EC", 60)
          if l_0_2:sub(1, 8) == "\\device\\" then
            l_0_2 = (MpCommon.PathToWin32Path)(l_0_2)
          end
          ;
          (MpCommon.AppendPersistContextNoPath)("CLF_IC", l_0_2 .. "\\" .. l_0_3, 60)
          return mp.INFECTED
        end
      end
    end
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.CLEAN
  return l_0_0
end

