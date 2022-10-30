-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3284.luac 

-- params : ...
-- function num : 0
RemoveLdpinchAppDataValue = function()
  -- function num : 0_0
  local l_1_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\WOW6432Node\\Microsoft\\Windows\\CurrentVersion\\Run")
  if l_1_0 ~= nil then
    local l_1_1 = (sysio.RegEnumValues)(l_1_0)
    for l_1_5,l_1_6 in pairs(l_1_1) do
      if (sysio.GetRegValueType)(l_1_0, l_1_6) == 2 then
        local l_1_7 = (sysio.GetRegValueAsString)(l_1_0, l_1_6)
        if l_1_7 ~= nil then
          local l_1_8 = (sysio.ExpandFilePath)(l_1_7, true)
          for l_1_12,l_1_13 in pairs(l_1_8) do
            l_1_13 = (string.lower)(l_1_13)
            for l_1_17,l_1_18 in ipairs((Remediation.Threat).Resources) do
              if l_1_18.Schema == "file" then
                local l_1_19 = (string.lower)(l_1_18.Path)
                if l_1_19 == l_1_13 then
                  (sysio.DeleteRegValue)(l_1_0, l_1_6)
                end
              end
            end
          end
        end
      end
    end
    -- DECOMPILER ERROR at PC68: Confused about usage of register R3 for local variables in 'ReleaseLocals'

  end
end

Is64BitOperatingSystem = function()
  -- function num : 0_1
  do return Info.EngineHost == "HOST_X64" end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

IsWindows8OrGreater = function()
  -- function num : 0_2
  do return (Info.OSMajorVersion == 6 and Info.OSMinorVersion > 1) or Info.OSMajorVersion > 6 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

if IsWindows8OrGreater() and Is64BitOperatingSystem() then
  RemoveLdpinchAppDataValue()
end

