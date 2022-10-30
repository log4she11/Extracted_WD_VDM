-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3517.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 24 or l_0_0 > 255 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 33) ~= 1554039296 and (mp.readu_u32)(headerpage, 33) ~= 2697077248 and (mp.bitand)((mp.readu_u32)(headerpage, 1), 16777215) ~= 6070466 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
local l_0_2 = ((string.lower)(l_0_1))
local l_0_3, l_0_4, l_0_5 = nil, nil, nil
while 1 do
  if l_0_2:find("^%l:\\windows\\system32\\rundll32%.exe%z") then
    l_0_3 = (string.find)(l_0_1, "�\(%l+)(%.%l%l%l),%l+%z")
    if l_0_3 then
      break
    end
    -- DECOMPILER ERROR at PC74: Overwrote pending register: R5 in 'AssignReg'

    -- DECOMPILER ERROR at PC75: Overwrote pending register: R4 in 'AssignReg'

    l_0_3 = (string.find)(l_0_1, "�\(~%$%l+)(%.%l%l%l),%l+%z")
    if l_0_3 then
      break
    end
    -- DECOMPILER ERROR at PC86: Overwrote pending register: R5 in 'AssignReg'

    -- DECOMPILER ERROR at PC87: Overwrote pending register: R4 in 'AssignReg'

    l_0_3 = (string.find)(l_0_1, "�\(%w+%.%w+%.%w+%.%w+%.%w+%.%w+%.%w+)(%.%w+),%w+%z")
    if l_0_3 then
      break
    end
    -- DECOMPILER ERROR at PC98: Overwrote pending register: R5 in 'AssignReg'

    -- DECOMPILER ERROR at PC99: Overwrote pending register: R4 in 'AssignReg'

    l_0_3 = (string.find)(l_0_1, "�\(%w+)(%.%w+),%w+%z")
    if l_0_3 then
      break
    end
    -- DECOMPILER ERROR at PC110: Overwrote pending register: R5 in 'AssignReg'

    -- DECOMPILER ERROR at PC111: Overwrote pending register: R4 in 'AssignReg'

    l_0_3 = (string.find)(l_0_1, "�\({?[%w%s%p]+}?)(%.{?[%w%s%-]+}?)\"?,[%w%p%s]+%z")
    if l_0_3 then
      break
    end
    do break end
    -- DECOMPILER ERROR at PC118: LeaveBlock: unexpected jumping out IF_THEN_STMT

    -- DECOMPILER ERROR at PC118: LeaveBlock: unexpected jumping out IF_STMT

  end
end
-- DECOMPILER ERROR at PC125: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC126: Overwrote pending register: R4 in 'AssignReg'

l_0_3 = (string.find)(l_0_1, " \\(%w+%.%w+%.%w+%.%w+%.%w+%.%w+%.%w+)(%.%w+),%w+%z")
-- DECOMPILER ERROR at PC136: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC137: Overwrote pending register: R4 in 'AssignReg'

if not l_0_3 then
  l_0_3 = (string.find)(l_0_1, "�\\\\\\\\\\\\\\\\\\\\\(%p%p%p%p%p-)(%.%d),%w+%z")
end
if l_0_3 then
  local l_0_6 = {}
  l_0_6[".exe"] = true
  l_0_6[".dll"] = true
  l_0_6[".cpl"] = true
  l_0_6[".ocx"] = true
  if l_0_6[l_0_5] then
    return mp.CLEAN
  end
  local l_0_7 = (mp.get_parent_filehandle)()
  if l_0_7 == nil then
    return mp.CLEAN
  end
  local l_0_8 = (mp.readfile_by_handle)(l_0_7, 0, 64)
  if l_0_8 == nil then
    return mp.CLEAN
  end
  if (mp.readu_u32)(l_0_8, 1) ~= 76 then
    return mp.CLEAN
  end
  if (mp.readu_u32)(l_0_8, 57) ~= 7 then
    return mp.CLEAN
  end
  local l_0_9 = nil
  local l_0_10 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
  if l_0_10 == mp.SCANREASON_ONOPEN or l_0_10 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    l_0_9 = (MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  end
  if l_0_9 == nil then
    l_0_9 = ((mp.getfilename)()):match("(.+)\\[^\\]+$")
  end
  if l_0_9 ~= nil then
    (mp.ReportLowfi)(l_0_9 .. "\\ \\" .. l_0_4 .. l_0_5, 2406282551)
    ;
    (mp.ReportLowfi)(l_0_9 .. "\\ \\IndexerVolumeGuid", 2012828607)
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

