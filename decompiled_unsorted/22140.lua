-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22140.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched == false then
  return mp.CLEAN
end
if (this_sigattrlog[3]).matched == false then
  return mp.CLEAN
end
if (this_sigattrlog[4]).matched == false then
  return mp.CLEAN
end
if (this_sigattrlog[5]).matched == false then
  return mp.CLEAN
end
if (this_sigattrlog[1]).matched then
  local l_0_0 = (this_sigattrlog[1]).utf8p1
  if l_0_0 == nil and (string.len)(l_0_0) <= 4 then
    return mp.CLEAN
  end
  local l_0_1 = (this_sigattrlog[1]).utf8p2
  if l_0_1 == nil and (string.len)(l_0_1) <= 4 then
    return mp.CLEAN
  end
  local l_0_2 = {}
  l_0_2["winword.exe"] = true
  l_0_2["excel.exe"] = true
  l_0_2["powerpnt.exe"] = true
  local l_0_3 = (string.lower)((string.match)(l_0_0, "([^\\]-[^\\%.]+)$"))
  if l_0_3 == nil and (string.len)(l_0_3) <= 4 then
    return mp.CLEAN
  end
  if l_0_2[l_0_3] then
    local l_0_4 = (this_sigattrlog[1]).ppid
    local l_0_5 = (this_sigattrlog[2]).ppid
    if l_0_4 ~= l_0_5 then
      return mp.CLEAN
    end
    local l_0_6, l_0_7 = (bm.get_process_relationships)(l_0_4)
    if #l_0_7 ~= 3 then
      return mp.CLEAN
    end
    local l_0_8 = false
    local l_0_9 = false
    local l_0_10 = false
    local l_0_11 = {}
    l_0_11["\\wscript.exe"] = true
    l_0_11["\\cscript.exe"] = true
    for l_0_15,l_0_16 in ipairs(l_0_7) do
      local l_0_17 = l_0_16.image_path
      local l_0_18 = (mp.bitand)(l_0_16.reason_ex, 1)
      if (string.len)(l_0_17) > 8 and (string.sub)(l_0_17, -8) == "\\cmd.exe" and l_0_18 == 1 then
        l_0_8 = true
      end
      if (string.len)(l_0_17) > 12 and l_0_11[(string.sub)(l_0_17, -12)] and l_0_18 ~= 1 then
        l_0_9 = true
      end
      if (string.len)(l_0_17) > 15 and (string.sub)(l_0_17, -15) == "\\powershell.exe" and l_0_18 ~= 1 then
        l_0_10 = true
      end
    end
    do
      if l_0_8 == false or l_0_9 == false or l_0_10 == false then
        return mp.CLEAN
      end
      local l_0_19 = (this_sigattrlog[4]).ppid
      local l_0_20 = (this_sigattrlog[5]).ppid
      local l_0_21, l_0_22 = (bm.get_process_relationships)(l_0_19)
      if #l_0_22 ~= 1 then
        return mp.CLEAN
      end
      if (l_0_22[1]).ppid ~= l_0_20 then
        return mp.CLEAN
      end
      local l_0_23 = {}
      l_0_23[".xls"] = true
      l_0_23[".doc"] = true
      l_0_23[".ppt"] = true
      l_0_23[".pps"] = true
      l_0_23.docx = true
      l_0_23.pptx = true
      l_0_23.ppsx = true
      l_0_23.xlsx = true
      l_0_23[".rtf"] = true
      l_0_23[".xml"] = true
      l_0_23.dotx = true
      l_0_23.dotm = true
      l_0_23[".odt"] = true
      l_0_23.xlsb = true
      l_0_23.xltx = true
      l_0_23.xltm = true
      l_0_23.xlam = true
      l_0_23[".xla"] = true
      l_0_23.docm = true
      l_0_23.xlsm = true
      l_0_23.pptm = true
      bm_AddRelatedFileFromCommandLine(l_0_1, l_0_23)
      local l_0_24 = {}
      l_0_24[".js"] = true
      l_0_24.vbs = true
      l_0_24.wsf = true
      l_0_24.jse = true
      l_0_24.vbe = true
      do
        local l_0_25 = (this_sigattrlog[3]).utf8p2
        bm_AddRelatedFileFromCommandLine(l_0_25, l_0_24, 3)
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

