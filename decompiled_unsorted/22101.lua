-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22101.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or l_0_1 == nil then
  return mp.CLEAN
end
if (string.match)(l_0_0, "\\tasks") ~= nil and (string.match)(l_0_1, "[^ ]+ +[^ ]+$") == nil and (mp.get_mpattribute)("BM_XML_FILE") and not (mp.get_mpattribute)("MpInternal_IsPliScan") and not (mp.get_mpattribute)("MpAlwaysLowfiMatch") then
  local l_0_2 = (mp.GetBruteMatchData)()
  local l_0_3 = l_0_2.match_offset + 1
  local l_0_4 = 128
  local l_0_5 = ""
  if l_0_2.is_header then
    l_0_5 = (tostring(headerpage)):sub(l_0_3, l_0_3 + l_0_4)
  else
    l_0_5 = (tostring(footerpage)):sub(l_0_3, l_0_3 + l_0_4)
  end
  local l_0_6 = (string.lower)(l_0_5)
  local l_0_7 = {}
  -- DECOMPILER ERROR at PC102: No list found for R7 , SetList fails

  -- DECOMPILER ERROR at PC103: Overwrote pending register: R8 in 'AssignReg'

  local l_0_8 = "youtube-dl%.exe"
  -- DECOMPILER ERROR at PC104: Overwrote pending register: R9 in 'AssignReg'

  -- DECOMPILER ERROR at PC105: Overwrote pending register: R10 in 'AssignReg'

  -- DECOMPILER ERROR at PC106: Overwrote pending register: R11 in 'AssignReg'

  for l_0_12 = "ffmpeg%.exe", "curl%.exe", "vstoinstaller%.exe" do
    -- DECOMPILER ERROR at PC108: Overwrote pending register: R13 in 'AssignReg'

    -- DECOMPILER ERROR at PC110: Overwrote pending register: R14 in 'AssignReg'

    -- DECOMPILER ERROR at PC111: Overwrote pending register: R15 in 'AssignReg'

    if (("/feedstation/").match)("=updateindex", "/iplog%.php%?") ~= nil then
      return mp.CLEAN
    end
  end
  local l_0_13 = l_0_5:find("http", 1, true)
  if l_0_13 ~= nil then
    local l_0_14, l_0_15 = l_0_5:find("<", 1, true)
    if l_0_15 ~= nil then
      local l_0_16, l_0_17 = l_0_5:find(" ", 1, true)
      local l_0_18 = ""
      -- DECOMPILER ERROR at PC149: Overwrote pending register: R17 in 'AssignReg'

      -- DECOMPILER ERROR at PC150: Overwrote pending register: R18 in 'AssignReg'

      -- DECOMPILER ERROR at PC158: Overwrote pending register: R14 in 'AssignReg'

      if l_0_17 ~= nil and l_0_17 < l_0_15 then
        do
          do
            local l_0_19 = (MpCommon.Base64Encode)(l_0_18)
            set_research_data("taskRenamedMsiUrl", l_0_19, false)
            do return mp.INFECTED end
            do return mp.CLEAN end
            -- WARNING: undefined locals caused missing assignments!
          end
        end
      end
    end
  end
end

