-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2923.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1, l_0_2 = nil, nil
  local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
  if l_0_3 == nil then
    l_0_1 = (mp.getfilename)()
    if l_0_1 == nil then
      return mp.CLEAN
    end
    l_0_2 = l_0_1:sub(-4)
  else
    l_0_2 = l_0_3:sub(-4)
  end
  if l_0_2:lower() ~= ".vbs" and l_0_2:lower() ~= ".vbe" then
    return mp.CLEAN
  end
  if l_0_3 == nil then
    l_0_3 = l_0_1:match("([^\\]+)$")
  end
  if l_0_3:match("^%a%a%a%a%a%a%a%a%a%a%.%.vbs$") ~= nil or l_0_3:match("^%a%a%a%a%a%a%a%a%a%a%.%.vbe$") ~= nil then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

