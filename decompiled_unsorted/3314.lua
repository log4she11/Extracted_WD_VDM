-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3314.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
if l_0_0 ~= nil and l_0_0:len() > 60 then
  local l_0_1 = {}
  l_0_1["Lua:FileInMicrosoftEdgeCache.A"] = "\\users\\[^\\]+\\appdata\\local\\packages\\microsoft.microsoftedge_8wekyb3d8bbwe\\.+\\#!.+\\microsoftedge\\cache\\.+"
  l_0_1["Lua:FileInMicrosoftEdgeDownloadsFolder.A"] = "\\users\\[^\\]+\\appdata\\local\\packages\\microsoft.microsoftedge_8wekyb3d8bbwe\\tempstate\\downloads.*"
  l_0_1["Lua:FileInInternetExplorerTemp.A"] = "\\users\\[^\\]+\\appdata\\local\\microsoft\\windows\\temporary internet files\\content.ie5\\.+"
  l_0_1["Lua:FileInChromeCache.A"] = "\\users\\[^\\]+\\appdata\\local\\google\\chrome\\user data\\default\\cache\\.+"
  l_0_1["Lua:FileInOperaCache.A"] = "\\users\\[^\\]+\\appdata\\local\\opera software\\opera stable\\cache\\.+"
  l_0_1["Lua:FileInFilefoxCache.A"] = "\\users\\[^\\]+\\appdata\\local\\mozilla\\firefox\\profiles\\.+%.default\\cache2\\entries\\.+"
  local l_0_2 = (string.lower)(l_0_0)
  for l_0_6,l_0_7 in pairs(l_0_1) do
    if (string.match)(l_0_2, l_0_7) then
      (mp.set_mpattribute)(l_0_6)
      return mp.INFECTED
    end
  end
end
do
  l_0_1 = mp
  l_0_1 = l_0_1.CLEAN
  return l_0_1
end

