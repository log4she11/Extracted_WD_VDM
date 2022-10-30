-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3609.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_CONTROL_GUID)
local l_0_2, l_0_3 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 and ((string.match)(l_0_1, "cafeefac%-dec7%-0000%-0001%-abcdeffedcba") or (string.match)(l_0_1, "08b0e5c0%-4fcb%-11cf%-aaa5%-00401c608501") or (string.match)(l_0_1, "d27cdb6e%-ae6d%-11cf%-96b8%-444553540000") or (string.match)(l_0_1, "dfeaf541%-f3e1%-4c24%-acac%-99c30715084a")) then
    local l_0_4, l_0_5 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_FRAME_URL)
    if l_0_4 then
      if (string.find)(l_0_5, ".hopto.org", 7, true) or (string.find)(l_0_5, ".serveftp.com", 7, true) or (string.find)(l_0_5, ".myftp.biz", 7, true) or (string.find)(l_0_5, ".ddnsking.com", 7, true) or (string.find)(l_0_5, ".ddns.net", 7, true) or (string.find)(l_0_5, ".servepics.com", 7, true) then
        if l_0_2 and l_0_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
          (mp.aggregate_mpattribute)("Context:NoIP")
        end
        ;
        (mp.aggregate_mpattribute)("//MpIsIEVScan")
        return mp.TRUE
      end
      if (string.find)(l_0_5, ".xyz/", 7, true) or (string.find)(l_0_5, ".trade/", 7, true) or (string.find)(l_0_5, ".systems/", 7, true) or (string.find)(l_0_5, ".army/", 7, true) or (string.find)(l_0_5, ".click/", 7, true) or (string.find)(l_0_5, ".space/", 7, true) or (string.find)(l_0_5, ".mobi/", 7, true) then
        if l_0_2 and l_0_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
          (mp.aggregate_mpattribute)("Context:GenericTLD")
        end
        ;
        (mp.aggregate_mpattribute)("//MpIsIEVScan")
        return mp.TRUE
      end
      if (string.find)(l_0_5, ".asia/", 7, true) or (string.find)(l_0_5, ".bid/", 7, true) or (string.find)(l_0_5, ".cafe/", 7, true) or (string.find)(l_0_5, ".club/", 7, true) or (string.find)(l_0_5, ".coop/", 7, true) or (string.find)(l_0_5, ".desi/", 7, true) or (string.find)(l_0_5, ".farm/", 7, true) or (string.find)(l_0_5, ".film/", 7, true) or (string.find)(l_0_5, ".guru/", 7, true) or (string.find)(l_0_5, ".life/", 7, true) or (string.find)(l_0_5, ".moe/", 7, true) or (string.find)(l_0_5, ".name/", 7, true) or (string.find)(l_0_5, ".news/", 7, true) or (string.find)(l_0_5, ".nyc/", 7, true) or (string.find)(l_0_5, ".tips/", 7, true) or (string.find)(l_0_5, ".top/", 7, true) then
        if l_0_2 and l_0_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
          (mp.aggregate_mpattribute)("Context:GenericTLD2")
        end
        ;
        (mp.aggregate_mpattribute)("//MpIsIEVScan")
        return mp.TRUE
      end
      if (string.find)((string.match)(l_0_5, "http://(.-/)"), "%.%l%l%l%l%l+/") then
        if l_0_2 and l_0_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
          (mp.aggregate_mpattribute)("Context:GenericLongTLD")
        end
        ;
        (mp.aggregate_mpattribute)("//MpIsIEVScan")
        return mp.TRUE
      end
      if (string.find)(l_0_5, ".com:", 7, true) or (string.find)(l_0_5, ".org:", 7, true) or (string.find)(l_0_5, ".info:", 7, true) or (string.find)(l_0_5, ".net:", 7, true) or (string.find)(l_0_5, ".ca:", 7, true) or (string.find)(l_0_5, ".ws:", 7, true) or (string.find)(l_0_5, ".eu:", 7, true) or (string.find)(l_0_5, ".us:", 7, true) or (string.find)(l_0_5, ".in:", 7, true) or (string.find)(l_0_5, ".vu:", 7, true) or (string.find)(l_0_5, ".br:", 7, true) or (string.find)(l_0_5, ".ru:", 7, true) or (string.find)(l_0_5, ".pw:", 7, true) then
        if l_0_2 and l_0_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
          (mp.aggregate_mpattribute)("Context:PortTLD")
        end
        ;
        (mp.aggregate_mpattribute)("//MpIsIEVScan")
        return mp.TRUE
      end
      if (string.find)(l_0_5, ".cf/", 7, true) or (string.find)(l_0_5, ".gq/", 7, true) or (string.find)(l_0_5, ".ga/", 7, true) or (string.find)(l_0_5, ".ml/", 7, true) or (string.find)(l_0_5, ".eu/", 7, true) or (string.find)(l_0_5, ".in/", 7, true) or (string.find)(l_0_5, ".me/", 7, true) then
        if l_0_2 and l_0_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
          (mp.aggregate_mpattribute)("Context:CountryCodeTLD")
        end
        ;
        (mp.aggregate_mpattribute)("//MpIsIEVScan")
        return mp.TRUE
      end
      if (string.find)(l_0_5, ".ag/", 7, true) or (string.find)(l_0_5, ".am/", 7, true) or (string.find)(l_0_5, ".at/", 7, true) or (string.find)(l_0_5, ".be/", 7, true) or (string.find)(l_0_5, ".bg/", 7, true) or (string.find)(l_0_5, ".bz/", 7, true) or (string.find)(l_0_5, ".cc/", 7, true) or (string.find)(l_0_5, ".ch/", 7, true) or (string.find)(l_0_5, ".cz/", 7, true) or (string.find)(l_0_5, ".dk/", 7, true) or (string.find)(l_0_5, ".ec/", 7, true) or (string.find)(l_0_5, ".eg/", 7, true) or (string.find)(l_0_5, ".es/", 7, true) or (string.find)(l_0_5, ".fi/", 7, true) or (string.find)(l_0_5, ".fm/", 7, true) or (string.find)(l_0_5, ".gr/", 7, true) or (string.find)(l_0_5, ".gs/", 7, true) or (string.find)(l_0_5, ".hr/", 7, true) or (string.find)(l_0_5, ".hu/", 7, true) or (string.find)(l_0_5, ".id/", 7, true) or (string.find)(l_0_5, ".il/", 7, true) or (string.find)(l_0_5, ".io/", 7, true) or (string.find)(l_0_5, ".ir/", 7, true) or (string.find)(l_0_5, ".it/", 7, true) or (string.find)(l_0_5, ".la/", 7, true) or (string.find)(l_0_5, ".lt/", 7, true) or (string.find)(l_0_5, ".lu/", 7, true) or (string.find)(l_0_5, ".ms/", 7, true) or (string.find)(l_0_5, ".mx/", 7, true) or (string.find)(l_0_5, ".my/", 7, true) or (string.find)(l_0_5, ".nl/", 7, true) or (string.find)(l_0_5, ".no/", 7, true) or (string.find)(l_0_5, ".ph/", 7, true) or (string.find)(l_0_5, ".pl/", 7, true) or (string.find)(l_0_5, ".pt/", 7, true) or (string.find)(l_0_5, ".pw/", 7, true) or (string.find)(l_0_5, ".se/", 7, true) or (string.find)(l_0_5, ".sk/", 7, true) or (string.find)(l_0_5, ".so/", 7, true) or (string.find)(l_0_5, ".th/", 7, true) or (string.find)(l_0_5, ".tk/", 7, true) or (string.find)(l_0_5, ".tn/", 7, true) or (string.find)(l_0_5, ".to/", 7, true) or (string.find)(l_0_5, ".tt/", 7, true) or (string.find)(l_0_5, ".ua/", 7, true) or (string.find)(l_0_5, ".uk/", 7, true) or (string.find)(l_0_5, ".us/", 7, true) or (string.find)(l_0_5, ".vn/", 7, true) or (string.find)(l_0_5, ".ws/", 7, true) then
        if l_0_2 and l_0_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
          (mp.aggregate_mpattribute)("Context:CountryCodeTLD2")
        end
        ;
        (mp.aggregate_mpattribute)("//MpIsIEVScan")
        return mp.TRUE
      end
    end
  end
  return mp.FALSE
end

