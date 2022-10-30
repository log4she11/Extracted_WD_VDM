-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3622.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
local l_0_1, l_0_2 = l_0_0:match("(.+\\)([^\\]+)$")
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = l_0_2:len()
local l_0_4 = false
local l_0_5 = false
local l_0_6 = false
local l_0_7 = false
local l_0_8 = false
local l_0_9 = false
local l_0_10 = false
local l_0_11 = false
local l_0_12 = false
local l_0_13 = true
if l_0_2 == "kperra.exe" or l_0_2 == "sys_drivere.exe" or l_0_2 == "sys_drive.exe" or l_0_2 == "sys_drivepp.exe" or l_0_2 == "ntfs_clean.exe" or l_0_2 == "ntfs_cleanf.exe" or l_0_2 == "ms_cleanerre.exe" or l_0_2 == "ms_cleaner.exe" or l_0_2 == "wiupdat.exe" or l_0_2 == "vbupdat.exe" or l_0_2 == "wcrash.exe" or l_0_2 == "obupdat.exe" or l_0_2 == "pterra.exe" or l_0_2 == "tierra.exe" or l_0_2 == "stuprt.exe" or l_0_2 == "syserrfix.exe" or l_0_2 == "diskfix.exe" or l_0_2 == "dumpfix.exe" or l_0_2 == "bvtray.exe" or l_0_2 == "repfix.exe" or l_0_2 == "fixutil.exe" or l_0_2 == "urepair.exe" or l_0_2 == "errfix.exe" or l_0_2 == "anwres.exe" or l_0_2 == "hptcpu.exe" or l_0_2 == "sysdfg.exe" or l_0_2 == "diskchk.exe" or l_0_2 == "sysrestore.exe" or l_0_2 == "aptcpu.exe" or l_0_2 == "apucpu.exe" or l_0_2 == "defsrag.exe" or l_0_2 == "diskswtool.exe" or l_0_2 == "dissdkchk.exe" then
  l_0_4 = true
else
  if l_0_2 == "commandre.exe" or l_0_2 == "wifi-cfg.exe" or l_0_2 == "wifi-cfgf.exe" or l_0_2 == "restor.exe" or l_0_2 == "mornef0.exe" or l_0_2 == "video player.com" or l_0_2 == "mondarf0.exe" or l_0_2 == "svchostre.exe" then
    l_0_9 = true
  else
    if l_0_2 == "video player.exe" then
      (mp.set_mpattribute)("Lua:SuspiciousPEFileName.B")
    else
      if l_0_2 == "wiupdate.exe" or l_0_2 == "fixtool.exe" or l_0_2 == "conhost.exe" or l_0_2 == "shell32.dll" or l_0_2 == "dwtray.exe" or l_0_2 == "defrag.exe" or l_0_2 == "disktool.exe" or l_0_2 == "systemrestore.exe" then
        l_0_4 = true
        l_0_10 = true
      else
        if l_0_2 == "fvjcrgr0.exe" or l_0_2 == "setup0.exe" then
          l_0_5 = true
        else
          if l_0_2 == "tmp1.log" or l_0_2 == "tmpe.log" then
            l_0_4 = true
            l_0_6 = true
          else
            -- DECOMPILER ERROR at PC167: Unhandled construct in 'MakeBoolean' P1

            if l_0_2 == "msiexec.exe" and (l_0_1:find("\\windows genuine advantage\\{", 1, true) ~= nil or l_0_1:find("\\windows\\installer\\{", 1, true) ~= nil) then
              l_0_7 = true
            end
          end
        end
      end
    end
  end
end
-- DECOMPILER ERROR at PC178: Unhandled construct in 'MakeBoolean' P1

if l_0_2 == "cryptbase.dll" and l_0_1:find("\\appdata\\locallow\\{", 1, true) ~= nil then
  l_0_4 = true
end
if l_0_2 == "errcntrl.exe" or l_0_2 == "xzhian.exe" then
  l_0_4 = true
  l_0_11 = true
else
  if (string.sub)(l_0_2, -4) == ".exe" or (string.sub)(l_0_2, -4) == ".dll" then
    -- DECOMPILER ERROR at PC273: Unhandled construct in 'MakeBoolean' P1

    if l_0_3 == 9 and (l_0_2:find("^%dvolk%.") == 1 or l_0_2:find("^%dzomi%.") == 1 or l_0_2:find("^%dffvv%.") == 1 or l_0_2:find("^%dfggd%.") == 1 or l_0_2:find("^%dbito%.") == 1 or l_0_2:find("^%dreff%.") == 1 or l_0_2:find("^%dbrtd%.") == 1 or l_0_2:find("^%dtuba%.") == 1 or l_0_2:find("^%dfana%.") == 1 or l_0_2:find("^%dvaaz%.") == 1 or l_0_2:find("^%dglum%.") == 1 or l_0_2:find("^%dlona%.") == 1 or l_0_2:find("^%dtora%.") == 1 or l_0_2:find("^%dgeea%.") == 1) then
      l_0_5 = true
    end
    -- DECOMPILER ERROR at PC372: Unhandled construct in 'MakeBoolean' P1

    if l_0_3 == 10 and (l_0_2:find("^%dvoika%.") == 1 or l_0_2:find("^%dtiman%.") == 1 or l_0_2:find("^%dvikia%.") == 1 or l_0_2:find("^%dvaman%.") == 1 or l_0_2:find("^%dvilic%.") == 1 or l_0_2:find("^%dzoman%.") == 1 or l_0_2:find("^%dtumba%.") == 1 or l_0_2:find("^%ddcvvv%.") == 1 or l_0_2:find("^%dtemad%.") == 1 or l_0_2:find("^%dbudda%.") == 1 or l_0_2:find("^%dbyuut%.") == 1 or l_0_2:find("^%dtroja%.") == 1 or l_0_2:find("^%dgansa%.") == 1 or l_0_2:find("^%dbewff%.") == 1 or l_0_2:find("^%ddesta%.") == 1 or l_0_2:find("^%dbalik%.") == 1 or l_0_2:find("^%doiran%.") == 1 or l_0_2:find("^%derree%.") == 1 or l_0_2:find("^%dslota%.") == 1) then
      l_0_5 = true
    end
    -- DECOMPILER ERROR at PC441: Unhandled construct in 'MakeBoolean' P1

    if l_0_3 == 11 and (l_0_2:find("^%drokato%.") == 1 or l_0_2:find("^%dtorkan%.") == 1 or l_0_2:find("^%dcerber%.") == 1 or l_0_2:find("^%dpliuna%.") == 1 or l_0_2:find("^%dtomand%.") == 1 or l_0_2:find("^%dvalium%.") == 1 or l_0_2:find("^%dblonde%.") == 1 or l_0_2:find("^%drfeeee%.") == 1 or l_0_2:find("^%dgeorki%.") == 1 or l_0_2:find("^%dvoider%.") == 1 or l_0_2:find("^%dfugaze%.") == 1 or l_0_2:find("^%dloshek%.") == 1 or l_0_2:find("^%dvomina%.") == 1) then
      l_0_5 = true
    end
    -- DECOMPILER ERROR at PC470: Unhandled construct in 'MakeBoolean' P1

    if l_0_3 == 12 and (l_0_2:find("^%dsysconf%.") == 1 or l_0_2:find("^%dtokinau%.") == 1 or l_0_2:find("^%dvaevaod%.") == 1 or l_0_2:find("^%dvokrena%.") == 1 or l_0_2:find("^%dpalitra%.") == 1) then
      l_0_5 = true
    end
    -- DECOMPILER ERROR at PC489: Unhandled construct in 'MakeBoolean' P1

    if l_0_3 == 13 and (l_0_2:find("^%dskkkkkkk%.") == 1 or l_0_2:find("^%dfile_saw%.") == 1 or l_0_2:find("^%dpolismen%.") == 1) then
      l_0_5 = true
    end
    -- DECOMPILER ERROR at PC503: Unhandled construct in 'MakeBoolean' P1

    if l_0_3 == 14 and (l_0_2:find("^%ddsve2wefd%.") == 1 or l_0_2:find("^%dbovtensdf%.") == 1) then
      l_0_5 = true
    end
    if l_0_3 == 18 and l_0_2:find("^%d%d%d%d%d%d%d%d%d%d%d%d%d%d%.exe") == 1 then
      (mp.set_mpattribute)("Lua:SuspiciousPEFileName.B")
    else
      -- DECOMPILER ERROR at PC538: Unhandled construct in 'MakeBoolean' P3

      if (l_0_3 == 23 and l_0_2:find("^%dsyasdsgscsafgrwonf%.") == 1) or l_0_3 ~= 21 or l_0_3 == 14 and l_0_2:find("^%dchtototam%.") == 1 then
        l_0_5 = true
      else
        if l_0_3 == 31 and l_0_2:find("^[0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f]%[%d%]%.exe") == 1 then
          l_0_4 = true
        else
          if l_0_3 == 8 and l_0_2:find("^%d%[%d%]%.") == 1 then
            l_0_6 = true
            l_0_10 = true
          end
        end
      end
    end
    if l_0_3 > 25 and l_0_3 < 100 and (string.sub)(l_0_2, 1, 18) == "api-ms-win-system-" and (string.sub)(l_0_2, -4) == ".dll" then
      if l_0_1:find("\\appdata\\locallow\\{", 1, true) ~= nil then
        l_0_4 = true
      else
        if l_0_1:find("\\windows genuine advantage\\{", 1, true) ~= nil or l_0_1:find("\\windows\\installer\\{", 1, true) ~= nil or l_0_1:find("\\appdata\\local\\temp\\{........%-....%-....%-....%-............}\\") ~= nil or l_0_1:find("\\local settings\\temp\\{........%-....%-....%-....%-............}\\") ~= nil then
          l_0_7 = true
        end
      end
    end
    if ((l_0_1:find("\\programdata\\{", 1, true) == nil and l_0_1:find("\\application data\\{", 1, true) == nil) or (l_0_1:find("\\programdata\\{9a88e103-a20a-4ea5-8636-c73b709a5bf8}\\", 1, true) == nil and l_0_1:find("\\programdata\\{f66cb4ee-546f-4d54-9332-216de189aab0}\\", 1, true) == nil and l_0_1:find("\\programdata\\{698e0848-6d29-4305-80dc-e8d609260ce2}\\", 1, true) == nil and l_0_1:find("\\programdata\\{49a0bac7-3326-4433-9373-4aa8793abb5c}\\", 1, true) == nil and l_0_1:find("\\programdata\\{effc3e07-aed7-4c3c-992f-2c5eb14af4a8}\\", 1, true) == nil and l_0_1:find("\\programdata\\{d9e629dc-cb1c-4a97-9900-81922b4effd4}\\", 1, true) == nil and l_0_1:find("\\programdata\\{ca2facf7-9029-4a21-892b-e7f60b39ff1a}\\", 1, true) == nil and l_0_1:find("\\programdata\\{4ba6ab29-2eab-46fc-8b33-a767b5dbb0f3}\\", 1, true) == nil and l_0_1:find("\\application data\\{4d03d701-c800-49f0-8590-127eff2877ff}\\", 1, true) == nil and l_0_1:find("\\programdata\\{9b82496a-c211-4fcf-84b5-e2b3a1d99f8f}", 1, true) == nil and l_0_1:find("\\programdata\\{d93bcbeb-07b6-4fa0-86bf-5552dfc4404c}", 1, true) == nil and l_0_1:find("\\programdata\\{65ee3202-cce0-4ec4-9369-0a126e1da09c}", 1, true) == nil and l_0_1:find("\\programdata\\{b7a719fb-068f-41ad-8261-3569c22edec2}", 1, true) == nil and l_0_1:find("\\programdata\\{18067bd7-3c56-4e2e-8627-51ee9adc5a30}", 1, true) == nil and l_0_1:find("\\programdata\\{1016e27d-c6ce-4668-9211-5ec18caadbf8}", 1, true) == nil and l_0_1:find("\\programdata\\{39567fd8-2a86-4514-8b0a-406c6e60a8bb}", 1, true) == nil and l_0_1:find("\\programdata\\{9925001e-4d97-434f-8579-2e06af34678f}", 1, true) == nil and l_0_1:find("\\programdata\\{0bf6ab17-0058-462c-8274-0655b925c812}", 1, true) == nil and l_0_1:find("\\programdata\\{a4682c3b-ab83-49b3-8eb5-b44e3f044b59}", 1, true) == nil and l_0_1:find("\\programdata\\{0a41da87-d172-4c26-9422-d2c4f5549861}", 1, true) == nil and l_0_1:find("\\programdata\\{2cd18189-70a0-4ae9-899e-05bad272e52e}", 1, true) == nil and l_0_1:find("\\programdata\\{33896b39-667b-48e5-8c29-b02174b09d04}", 1, true) == nil and l_0_1:find("\\programdata\\{2f752dac-f812-4497-9e91-d8701a4745cb}", 1, true) == nil and l_0_1:find("\\programdata\\{9cad18b2-ff9b-4cca-8ee0-a4cda3ad5f51}\\", 1, true) == nil) or l_0_3 <= 4 or (string.sub)(l_0_2, -4) == ".dll") then
      l_0_7 = true
      l_0_10 = true
      l_0_13 = false
    end
    if ((l_0_2:find("^rad.....%.tmp%.exe") ~= 1 and l_0_2:find("^rad.....%.tmp%.dll") ~= 1) or l_0_1:len() <= 20 or (l_0_1:find("\\appdata\\local\\temp\\", 1, true) == nil and l_0_1:find("\\local settings\\temp\\", 1, true) == nil) or ((string.sub)(l_0_1, -6) == "\\temp\\" or (string.sub)(l_0_1, -10) == "\\temp\\low\\")) then
      l_0_8 = true
    end
  end
end
if (l_0_3 == 27 and l_0_2:find("^~tmf%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%.tmp") == 1) or l_0_3 > 18 and l_0_3 < 26 and l_0_2:find("^0%.%d+%.log") == 1 then
  l_0_5 = true
else
  if (l_0_3 == 12 and l_0_2:find("^logos%[%d%]%.php") == 1) or l_0_3 > 13 and l_0_3 < 23 and l_0_2:find("^%d%d?%d?_%d%d?%d?_%d%d?%d?_%d%d?%d?%[%d%]%.htm") == 1 then
    l_0_4 = true
  end
end
if (string.sub)(l_0_2, -4) == ".dll" and l_0_1:find("\\appdata\\locallow\\{........%-....%-....%-....%-............}\\") ~= nil then
  l_0_4 = true
  ;
  (mp.set_mpattribute)("Lua:BedepFileName.G")
else
  if (string.sub)(l_0_2, -4) == ".tmp" then
    if l_0_1:find("\\programdata\\windows genuine advantage\\{........%-....%-....%-....%-............}\\") ~= nil then
      l_0_7 = true
    else
      if (l_0_3 == 7 or l_0_3 == 8) and l_0_2:find("^[0-9a-f][0-9a-f][0-9a-f][0-9a-f]?%.tmp") == 1 then
        if l_0_1:len() > 20 and (l_0_1:find("\\appdata\\local\\temp\\", 1, true) ~= nil or l_0_1:find("\\local settings\\temp\\", 1, true) ~= nil) and ((string.sub)(l_0_1, -6) == "\\temp\\" or (string.sub)(l_0_1, -10) == "\\temp\\low\\") then
          l_0_4 = true
          l_0_10 = true
          l_0_12 = true
          l_0_13 = false
        end
        if l_0_1:len() > 10 and (string.sub)(l_0_1, -10) == "\\temp\\low\\" then
          l_0_4 = true
          l_0_10 = true
          l_0_12 = true
          l_0_13 = false
        end
      end
    end
    if (l_0_1:find("\\appdata\\local\\temp\\{........%-....%-....%-....%-............}\\$") ~= nil or l_0_1:find("\\local settings\\temp\\{........%-....%-....%-....%-............}\\$") ~= nil) and l_0_3 == 11 and l_0_2:find("^tmp[0-9a-f][0-9a-f][0-9a-f][0-9a-f]%.tmp") == 1 then
      l_0_7 = true
      l_0_13 = false
    end
  end
end
if (l_0_4 or l_0_5 or l_0_6 or l_0_7 or l_0_8 or l_0_9) and not l_0_10 then
  (mp.set_mpattribute)("Lua:SuspiciousPEFileName.A")
end
if l_0_4 or l_0_5 or l_0_6 or l_0_7 or l_0_8 then
  local l_0_14 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
  local l_0_15 = false
  local l_0_16, l_0_17 = pcall(mp.get_parent_filehandle)
  if l_0_16 then
    l_0_16 = pcall(mp.get_filesize_by_handle, l_0_17)
  end
  if not l_0_16 then
    l_0_15 = true
  end
  local l_0_18 = false
  if peattributes.isdll and peattributes.no_exports and (peattributes.no_ep or epcode[1] ~= 184 or (mp.readu_u32)(epcode, 3) ~= 3254779904 or (mp.readu_u16)(epcode, 7) == 12) then
    l_0_18 = true
  end
  local l_0_19 = false
  if pehdr.NumberOfSections > 0 and (mp.getfilesize)() < (pesecs[pehdr.NumberOfSections]).PointerToRawData + (pesecs[pehdr.NumberOfSections]).SizeOfRawData then
    l_0_19 = true
  end
  if l_0_15 and not l_0_18 and not l_0_19 and l_0_14 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    local l_0_20 = false
    local l_0_21 = false
    l_0_20 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_NEWLYCREATEDHINT)
    -- DECOMPILER ERROR at PC1120: Overwrote pending register: R21 in 'AssignReg'

    if not l_0_20 then
      do
        local l_0_22 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
        if l_0_4 and l_0_22 == "iexplore.exe" then
          if l_0_11 or l_0_13 and not l_0_21 then
            (mp.set_mpattribute)("Lua:ContextEKIEDropTest")
          else
            ;
            (mp.set_mpattribute)("Lua:ContextEKIEDrop")
          end
        else
          if l_0_4 and l_0_22 == "opera.exe" and not l_0_12 then
            if l_0_11 or l_0_13 and not l_0_21 then
              (mp.set_mpattribute)("Lua:ContextEKOperaDropTest")
            else
              ;
              (mp.set_mpattribute)("Lua:ContextEKOperaDrop")
            end
          else
            if l_0_4 and l_0_22 == "plugin-container.exe" and not l_0_12 then
              if l_0_11 or l_0_13 and not l_0_21 then
                (mp.set_mpattribute)("Lua:ContextEKFirefoxDropTest")
              else
                ;
                (mp.set_mpattribute)("Lua:ContextEKFirefoxDrop")
              end
            else
              if l_0_5 and l_0_22 == "java.exe" then
                if l_0_11 or l_0_13 and not l_0_21 then
                  (mp.set_mpattribute)("Lua:ContextEKJavaDropTest")
                else
                  ;
                  (mp.set_mpattribute)("Lua:ContextEKJavaDrop")
                end
              else
                if l_0_6 and l_0_22 == "acrord32.exe" then
                  if l_0_11 or l_0_13 and not l_0_21 then
                    (mp.set_mpattribute)("Lua:ContextEKAcroRdDropTest")
                  else
                    ;
                    (mp.set_mpattribute)("Lua:ContextEKAcroRdDrop")
                  end
                else
                  if not l_0_4 or (((l_0_22 == "aolbrowser.exe" or l_0_22 == "msn.exe") and not l_0_12) or not l_0_8 or l_0_22 == "wscript.exe") then
                    if l_0_11 or l_0_13 and not l_0_21 then
                      (mp.set_mpattribute)("Lua:ContextEKOtherDropTest")
                    else
                      ;
                      (mp.set_mpattribute)("Lua:ContextEKOtherDrop")
                    end
                  else
                    if l_0_7 and l_0_22 == "explorer.exe" then
                      if l_0_11 or l_0_13 and not l_0_21 then
                        (mp.set_mpattribute)("Lua:ContextEKExplorerDropTest")
                      else
                        ;
                        (mp.set_mpattribute)("Lua:ContextEKExplorerDrop")
                      end
                    end
                  end
                end
              end
            end
          end
        end
        return mp.CLEAN
      end
    end
  end
end

