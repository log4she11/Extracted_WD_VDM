-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3260.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetCertificateInfo)()
if l_0_0 == nil or #l_0_0 == 0 then
  return mp.CLEAN
end
for l_0_4,l_0_5 in ipairs(l_0_0) do
  local l_0_6 = l_0_5.Certificates
  if l_0_6 ~= nil then
    for l_0_10,l_0_11 in ipairs(l_0_6) do
      local l_0_12 = l_0_11.Issuer
      if l_0_12 ~= nil and l_0_12.Organization ~= nil then
        local l_0_13 = {}
        l_0_13["Microsoft Corporation"] = true
        l_0_13["ROBLOX Corporation"] = true
        l_0_13["AddTrust AB"] = true
        l_0_13["Adobe Systems Incorporated"] = true
        l_0_13["Dell USA L.P."] = true
        l_0_13["DigiCert Inc"] = true
        l_0_13.DigiCert = true
        l_0_13["VeriSign, Inc."] = true
        l_0_13["VeriSign Trust Network"] = true
        l_0_13["COMODO CA Limited"] = true
        l_0_13.Thawte = true
        l_0_13["Thawte Consulting (Pty) Ltd."] = true
        l_0_13["Symantec Corporation"] = true
        l_0_13["WIZVERA CO., LTD"] = true
        l_0_13["NCH Software"] = true
        l_0_13["win.rar GmbH"] = true
        l_0_13.Interezen = true
        l_0_13["Interezen Co.,Ltd"] = true
        l_0_13["Interezen Co,.Ltd"] = true
        l_0_13["Shenzhen Wondershare Information Technology Co., Ltd."] = true
        l_0_13["Reloaded Games, Inc"] = true
        if l_0_13[(mp.utf16to8)(l_0_12.Organization)] then
          return mp.CLEAN
        end
      end
    end
  end
end
do return mp.INFECTED end
-- DECOMPILER ERROR at PC67: Confused about usage of register R1 for local variables in 'ReleaseLocals'


