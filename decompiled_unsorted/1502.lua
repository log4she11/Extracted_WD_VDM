-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1502.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2 = nil
local l_0_3 = nil
local l_0_4 = {}
local l_0_5 = 0
local l_0_6 = 0
local l_0_7 = {[".tmp"] = true, [".exe"] = true, [".dll"] = true, [".ini"] = true, [".dat"] = true, [".log"] = true, [".reg"] = true, [".evtx"] = true, [".bat"] = true, [".zip"] = true, [".rar"] = true, [".manifest"] = true, [".clb"] = true, [".ccx"] = true, [".cch"] = true}
-- DECOMPILER ERROR at PC47: Confused about usage of register: R7 in 'UnsetPending'

-- DECOMPILER ERROR at PC56: Confused about usage of register: R7 in 'UnsetPending'

if (bm.get_imagepath)() ~= nil then
  if (string.find)((string.lower)((bm.get_imagepath)()), "\\windows\\", 1, true) ~= nil or (string.find)((string.lower)((bm.get_imagepath)()), "\\program files", 1, true) ~= nil or (string.find)((string.lower)((bm.get_imagepath)()), "%program_files%", 1, true) ~= nil then
    return mp.CLEAN
  end
  for l_0_11,l_0_12 in ipairs({"rpro8.exe", "venturi.serverservice.exe", "wdbackup.exe", "zenworkswindowsservice.exe", "zesservice.exe"}) do
    local l_0_8, l_0_9 = nil
    -- DECOMPILER ERROR at PC73: Confused about usage of register: R12 in 'UnsetPending'

    if (string.find)(l_0_9, true, 1, true) ~= nil then
      return mp.CLEAN
    end
  end
end
do
  if not (this_sigattrlog[1]).matched or not (this_sigattrlog[3]).matched or not (this_sigattrlog[5]).matched or not (this_sigattrlog[7]).matched or not (this_sigattrlog[9]).matched or not (this_sigattrlog[11]).matched or not (this_sigattrlog[13]).matched or not (this_sigattrlog[15]).matched or not (this_sigattrlog[17]).matched or not (this_sigattrlog[19]).matched or not (this_sigattrlog[21]).matched or not (this_sigattrlog[23]).matched or not (this_sigattrlog[25]).matched or not (this_sigattrlog[27]).matched or (this_sigattrlog[29]).matched == false then
    return mp.CLEAN
  end
  if (bm.GetSignatureMatchDuration)() > 50000000 then
    return mp.CLEAN
  end
  if (this_sigattrlog[1]).wp2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[1]).utf8p2)
    l_0_3 = (string.match)(l_0_2, "(%.[^%.]+)$")
    if l_0_3 == ".exe" then
      l_0_6 = l_0_6 + 1
    else
      if l_0_3 ~= nil and l_0_4[l_0_3] == nil and l_0_7[l_0_3] == nil then
        l_0_4[l_0_3] = true
        l_0_5 = l_0_5 + 1
      end
    end
  end
  if (this_sigattrlog[3]).wp2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[3]).utf8p2)
    l_0_3 = (string.match)(l_0_2, "(%.[^%.]+)$")
    if l_0_3 == ".exe" then
      l_0_6 = l_0_6 + 1
    else
      if l_0_3 ~= nil and l_0_4[l_0_3] == nil and l_0_7[l_0_3] == nil then
        l_0_4[l_0_3] = true
        l_0_5 = l_0_5 + 1
      end
    end
  end
  if (this_sigattrlog[5]).wp2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[5]).utf8p2)
    l_0_3 = (string.match)(l_0_2, "(%.[^%.]+)$")
    if l_0_3 == ".exe" then
      l_0_6 = l_0_6 + 1
    else
      if l_0_3 ~= nil and l_0_4[l_0_3] == nil and l_0_7[l_0_3] == nil then
        l_0_4[l_0_3] = true
        l_0_5 = l_0_5 + 1
      end
    end
  end
  if (this_sigattrlog[7]).wp2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[7]).utf8p2)
    l_0_3 = (string.match)(l_0_2, "(%.[^%.]+)$")
    if l_0_3 == ".exe" then
      l_0_6 = l_0_6 + 1
    else
      if l_0_3 ~= nil and l_0_4[l_0_3] == nil and l_0_7[l_0_3] == nil then
        l_0_4[l_0_3] = true
        l_0_5 = l_0_5 + 1
      end
    end
  end
  if (this_sigattrlog[9]).wp2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[9]).utf8p2)
    l_0_3 = (string.match)(l_0_2, "(%.[^%.]+)$")
    if l_0_3 == ".exe" then
      l_0_6 = l_0_6 + 1
    else
      if l_0_3 ~= nil and l_0_4[l_0_3] == nil and l_0_7[l_0_3] == nil then
        l_0_4[l_0_3] = true
        l_0_5 = l_0_5 + 1
      end
    end
  end
  if (this_sigattrlog[11]).wp2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[11]).utf8p2)
    l_0_3 = (string.match)(l_0_2, "(%.[^%.]+)$")
    if l_0_3 == ".exe" then
      l_0_6 = l_0_6 + 1
    else
      if l_0_3 ~= nil and l_0_4[l_0_3] == nil and l_0_7[l_0_3] == nil then
        l_0_4[l_0_3] = true
        l_0_5 = l_0_5 + 1
      end
    end
  end
  if (this_sigattrlog[13]).wp2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[13]).utf8p2)
    l_0_3 = (string.match)(l_0_2, "(%.[^%.]+)$")
    if l_0_3 == ".exe" then
      l_0_6 = l_0_6 + 1
    else
      if l_0_3 ~= nil and l_0_4[l_0_3] == nil and l_0_7[l_0_3] == nil then
        l_0_4[l_0_3] = true
        l_0_5 = l_0_5 + 1
      end
    end
  end
  if (this_sigattrlog[15]).wp2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[15]).utf8p2)
    l_0_3 = (string.match)(l_0_2, "(%.[^%.]+)$")
    if l_0_3 == ".exe" then
      l_0_6 = l_0_6 + 1
    else
      if l_0_3 ~= nil and l_0_4[l_0_3] == nil and l_0_7[l_0_3] == nil then
        l_0_4[l_0_3] = true
        l_0_5 = l_0_5 + 1
      end
    end
  end
  if (this_sigattrlog[17]).wp2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[17]).utf8p2)
    l_0_3 = (string.match)(l_0_2, "(%.[^%.]+)$")
    if l_0_3 == ".exe" then
      l_0_6 = l_0_6 + 1
    else
      if l_0_3 ~= nil and l_0_4[l_0_3] == nil and l_0_7[l_0_3] == nil then
        l_0_4[l_0_3] = true
        l_0_5 = l_0_5 + 1
      end
    end
  end
  if (this_sigattrlog[19]).wp2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[19]).utf8p2)
    l_0_3 = (string.match)(l_0_2, "(%.[^%.]+)$")
    if l_0_3 == ".exe" then
      l_0_6 = l_0_6 + 1
    else
      if l_0_3 ~= nil and l_0_4[l_0_3] == nil and l_0_7[l_0_3] == nil then
        l_0_4[l_0_3] = true
        l_0_5 = l_0_5 + 1
      end
    end
  end
  if (this_sigattrlog[21]).wp2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[21]).utf8p2)
    l_0_3 = (string.match)(l_0_2, "(%.[^%.]+)$")
    if l_0_3 == ".exe" then
      l_0_6 = l_0_6 + 1
    else
      if l_0_3 ~= nil and l_0_4[l_0_3] == nil and l_0_7[l_0_3] == nil then
        l_0_4[l_0_3] = true
        l_0_5 = l_0_5 + 1
      end
    end
  end
  if (this_sigattrlog[23]).wp2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[23]).utf8p2)
    l_0_3 = (string.match)(l_0_2, "(%.[^%.]+)$")
    if l_0_3 == ".exe" then
      l_0_6 = l_0_6 + 1
    else
      if l_0_3 ~= nil and l_0_4[l_0_3] == nil and l_0_7[l_0_3] == nil then
        l_0_4[l_0_3] = true
        l_0_5 = l_0_5 + 1
      end
    end
  end
  if (this_sigattrlog[25]).wp2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[25]).utf8p2)
    l_0_3 = (string.match)(l_0_2, "(%.[^%.]+)$")
    if l_0_3 == ".exe" then
      l_0_6 = l_0_6 + 1
    else
      if l_0_3 ~= nil and l_0_4[l_0_3] == nil and l_0_7[l_0_3] == nil then
        l_0_4[l_0_3] = true
        l_0_5 = l_0_5 + 1
      end
    end
  end
  if (this_sigattrlog[27]).wp2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[27]).utf8p2)
    l_0_3 = (string.match)(l_0_2, "(%.[^%.]+)$")
    if l_0_3 == ".exe" then
      l_0_6 = l_0_6 + 1
    else
      if l_0_3 ~= nil and l_0_4[l_0_3] == nil and l_0_7[l_0_3] == nil then
        l_0_4[l_0_3] = true
        l_0_5 = l_0_5 + 1
      end
    end
  end
  if (this_sigattrlog[29]).wp2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[29]).utf8p2)
    l_0_3 = (string.match)(l_0_2, "(%.[^%.]+)$")
    if l_0_3 == ".exe" then
      l_0_6 = l_0_6 + 1
    else
      if l_0_3 ~= nil and l_0_4[l_0_3] == nil and l_0_7[l_0_3] == nil then
        l_0_4[l_0_3] = true
        l_0_5 = l_0_5 + 1
      end
    end
  end
  do
    if l_0_5 >= 6 and l_0_6 <= 2 then
      local l_0_13 = nil
      if not (MpCommon.QueryPersistContext)((bm.get_imagepath)(), "RunsDestructiveCMDsParent") then
        return mp.INFECTED
      end
      if (MpCommon.QueryPersistContext)((bm.get_imagepath)(), "RunsDestructiveCMDsParentBlock") then
        (mp.ReportLowfi)((bm.get_imagepath)(), 1527965087)
      end
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

