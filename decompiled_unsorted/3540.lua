-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3540.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetCertificateInfo)()
if l_0_0 == nil or #l_0_0 == 0 then
  return mp.CLEAN
end
for l_0_4,l_0_5 in ipairs(l_0_0) do
  if l_0_5.AuthenticodeContentType ~= "PE" then
    return mp.CLEAN
  end
  local l_0_6 = l_0_5.Certificates
  if l_0_6 ~= nil then
    for l_0_10,l_0_11 in ipairs(l_0_6) do
      local l_0_12 = l_0_11.Subject
      if l_0_12 ~= nil and l_0_12.Organization ~= nil and l_0_12.CommonName then
        local l_0_13 = {}
        l_0_13["Yuanyuan Mei"] = true
        l_0_13["Tianjing Cheng"] = true
        l_0_13["Ding Ruan"] = true
        l_0_13["Xin Zhou"] = true
        l_0_13["Yu Bao"] = true
        l_0_13["Yuanyuan Zhang"] = true
        l_0_13["Yupeng Zhang"] = true
        l_0_13["Chao Wei"] = true
        l_0_13["Beijing Caiyunshidai Technology Co., Ltd."] = true
        l_0_13["BIG JOURNEY TECHNOLOGY LIMITED"] = true
        l_0_13["VANKY TECHNOLOGY LIMITED"] = true
        local l_0_14 = {}
        l_0_14["Beijing Caiyunshidai Technology Co., Ltd."] = true
        l_0_14["BIG JOURNEY TECHNOLOGY LIMITED"] = true
        l_0_14["VANKY TECHNOLOGY LIMITED"] = true
        local l_0_15 = {}
        l_0_15["Wenchao Zhang"] = true
        l_0_15["Junyan Li"] = true
        l_0_15["Skytouch Technology Co., Limited"] = true
        l_0_15["Beijing Xingyunwang Technology Co., Ltd"] = true
        l_0_15["Hefei Infinity Technology Co., Ltd."] = true
        l_0_15["Shanghai Yuntong Technology Co., Ltd."] = true
        l_0_15["Xiaodong Wang"] = true
        l_0_15["Jia Lu"] = true
        l_0_15["Peng Zhang"] = true
        l_0_15["Thinknice Co. Limited"] = true
        local l_0_16 = {}
        l_0_16["Skytouch Technology Co., Limited"] = true
        l_0_16["Beijing Xingyunwang Technology Co., Ltd"] = true
        l_0_16["Hefei Infinity Technology Co., Ltd."] = true
        l_0_16["Shanghai Yuntong Technology Co., Ltd."] = true
        l_0_16["Thinknice Co. Limited"] = true
        local l_0_17 = {}
        l_0_17["Nayun Online Network Technology (Shenzhen) Co., Ltd."] = true
        local l_0_18 = {}
        l_0_18["Jinnan Wu"] = true
        l_0_18["Yang Liu"] = true
        l_0_18["Chencheng Cai"] = true
        l_0_18["Yanling Sun"] = true
        l_0_18["Jianfei Zhu"] = true
        l_0_18["Dening Hu"] = true
        l_0_18["Nayun Online Network Technology (Shenzhen) Co., Ltd."] = true
        l_0_18["Yuesong Pu"] = true
        local l_0_19 = {}
        l_0_19["EVANGEL TECHNOLOGY(HK) LIMITED"] = true
        local l_0_20 = {}
        l_0_20["Weiwei He"] = true
        l_0_20["EVANGEL TECHNOLOGY(HK) LIMITED"] = true
        local l_0_21 = {}
        l_0_21["Sice Xing"] = true
        l_0_21["Wei Liu"] = true
        l_0_21["Shan Feng"] = true
        l_0_21["Shulan Hou"] = true
        l_0_21["Fuyuan Zhou"] = true
        l_0_21["Luhong Han"] = true
        l_0_21["Yongli Zhang"] = true
        l_0_21["Jiang Liu"] = true
        l_0_21["Yongli Li"] = true
        l_0_21["Sivi Technology Limited"] = true
        l_0_21["Zhiming Yuan"] = true
        local l_0_22 = {}
        l_0_22["Sivi Technology Limited"] = true
        local l_0_23 = {}
        l_0_23["Zhongju Wu"] = true
        l_0_23["Houtao Zhou"] = true
        local l_0_24 = (mp.utf16to8)(l_0_12.Organization)
        local l_0_25 = (mp.utf16to8)(l_0_12.CommonName)
        if l_0_24 == "No Organization Affiliation" then
          if l_0_13[l_0_25] then
            (mp.set_mpattribute)("Lua:ElexCertSasquor.A")
          else
            if l_0_15[l_0_25] then
              (mp.set_mpattribute)("Lua:ElexCertSupTab.A")
            else
              if l_0_18[l_0_25] then
                (mp.set_mpattribute)("Lua:ElexCertXadupi.A")
              else
                if l_0_21[l_0_25] then
                  (mp.set_mpattribute)("Lua:ElexCertGhokswa.A")
                else
                  if l_0_23[l_0_25] then
                    (mp.set_mpattribute)("Lua:ElexCertSuweezy.A")
                  else
                    if l_0_20[l_0_25] then
                      (mp.set_mpattribute)("Lua:ElexCertChuckenit.A")
                    end
                  end
                end
              end
            end
          end
        else
          if l_0_14[l_0_24] and l_0_13[l_0_25] then
            (mp.set_mpattribute)("Lua:ElexCertSasquor.A")
          end
        end
      end
      if l_0_16[l_0_24] and l_0_15[l_0_25] then
        (mp.set_mpattribute)("Lua:ElexCertSupTab.A")
      end
      if l_0_19[l_0_24] and l_0_20[l_0_25] then
        (mp.set_mpattribute)("Lua:ElexCertChuckenit.A")
      end
      if l_0_22[l_0_24] and l_0_21[l_0_25] then
        (mp.set_mpattribute)("Lua:ElexCertGhokswa.A")
      end
      if l_0_17[l_0_24] and l_0_18[l_0_25] then
        (mp.set_mpattribute)("Lua:ElexCertXadupi.A")
      end
    end
  end
end
do return mp.CLEAN end
-- DECOMPILER ERROR at PC222: Confused about usage of register R1 for local variables in 'ReleaseLocals'


