-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21777.luac 

-- params : ...
-- function num : 0
local l_0_3 = nil
if (MpCommon.GetPersistContextNoPath)("TemplateInjc") ~= nil then
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    l_0_3 = (this_sigattrlog[1]).utf8p2
    local l_0_0 = nil
  else
    do
      if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
        l_0_3 = (this_sigattrlog[2]).utf8p2
      else
        if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
          l_0_3 = (this_sigattrlog[3]).utf8p2
          local l_0_1, l_0_2 = nil
        end
      end
      do
        local l_0_4 = nil
        if l_0_3 ~= nil then
          local l_0_5 = nil
          local l_0_6 = (mp.GetExecutablesFromCommandLine)(l_0_3)
          for l_0_10,l_0_11 in ipairs(l_0_6) do
            local l_0_7 = {[".xls"] = true, [".doc"] = true, [".ppt"] = true, [".pps"] = true, docx = true, pptx = true, ppsx = true, xlsx = true, [".rtf"] = true, [".xml"] = true, dotx = true, dotm = true, [".odt"] = true, xlsb = true, xltx = true, xltm = true, xlam = true, [".xla"] = true, docm = true, xlsm = true, pptm = true}
            -- DECOMPILER ERROR at PC82: Confused about usage of register: R9 in 'UnsetPending'

            if (sysio.IsFileExists)(R9_PC82) and l_0_7[(string.sub)(R9_PC82, -4)] then
              l_0_5 = R9_PC82
            end
          end
        end
        do
          l_0_6 = ipairs
          l_0_6 = l_0_6(l_0_4)
          for l_0_15,l_0_16 in l_0_6 do
            local l_0_16 = nil
            l_0_16 = string
            l_0_16 = l_0_16.match
            l_0_16 = l_0_16(l_0_5, R10_PC105)
            if l_0_16 then
              l_0_16 = mp
              l_0_16 = l_0_16.INFECTED
              return l_0_16
            end
          end
          do
            l_0_5 = mp
            l_0_5 = l_0_5.CLEAN
            do return l_0_5 end
            -- DECOMPILER ERROR at PC116: Confused about usage of register R3 for local variables in 'ReleaseLocals'

          end
        end
      end
    end
  end
end

