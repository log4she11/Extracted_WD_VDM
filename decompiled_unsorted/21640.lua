-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21640.luac 

-- params : ...
-- function num : 0
checkProcessTree = function(l_1_0, l_1_1)
  -- function num : 0_0
  if l_1_0 == nil or l_1_1 == nil or type(l_1_1) ~= "table" then
    return nil
  end
  local l_1_2 = l_1_0
  local l_1_3 = {}
  for l_1_7,l_1_8 in ipairs(l_1_1) do
    local l_1_9 = 0
    local l_1_10, l_1_11 = (bm.get_process_relationships)(l_1_2)
    for l_1_15,l_1_16 in ipairs(l_1_11) do
      if (mp.bitand)(l_1_16.reason_ex, 1) == 1 and (string.sub)(l_1_16.image_path, -(string.len)(l_1_8)) == l_1_8 then
        l_1_2 = l_1_16.ppid
        l_1_9 = l_1_9 + 1
      end
      if l_1_9 > 1 then
        return nil
      end
    end
    if l_1_9 == 0 then
      return nil
    end
    ;
    (table.insert)(l_1_3, l_1_2)
  end
  return l_1_3
end

if (bm.GetSignatureMatchDuration)() > 300000000 then
  return mp.CLEAN
end
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 == nil or l_0_0.ppid == nil then
  return mp.CLEAN
end
local l_0_1 = l_0_0.ppid
local l_0_2 = {}
-- DECOMPILER ERROR at PC26: No list found for R2 , SetList fails

-- DECOMPILER ERROR at PC27: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC28: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC29: Overwrote pending register: R5 in 'AssignReg'

if ("cmd.exe")("cmd.exe", "powershell.exe") == nil then
  return mp.CLEAN
end
return mp.INFECTED

