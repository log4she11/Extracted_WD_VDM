-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/962.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if (string.find)(l_0_0, "%->%(part000%d:%)", -18) == nil and (string.find)(l_0_0, "->(MSG)", -18, true) == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilesize)()
if l_0_1 == nil or l_0_1 < 20 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_2 = 4096
local l_0_3 = (mp.readfile)(0, math_min(l_0_1, l_0_2))
if l_0_3 == nil then
  return mp.CLEAN
end
local l_0_4 = (string.lower)((string.sub)(l_0_3, 1, math_min(32, l_0_1)))
if (string.find)(l_0_4, "<html>", 1, true) ~= nil then
  l_0_3 = (string.gsub)(l_0_3, "<[^>]->", "")
else
  if (string.find)(l_0_4, "{\\rtf1\\", 1, true) ~= nil then
    l_0_3 = (string.gsub)(l_0_3, "{.-}", "")
    l_0_3 = (string.gsub)(l_0_3, "\\%w+", "")
    l_0_3 = trim(l_0_3, "%s{}")
  end
end
local l_0_5 = {}
-- DECOMPILER ERROR at PC159: No list found for R5 , SetList fails

-- DECOMPILER ERROR at PC160: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC161: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC162: Overwrote pending register: R8 in 'AssignReg'

-- DECOMPILER ERROR at PC163: Overwrote pending register: R9 in 'AssignReg'

-- DECOMPILER ERROR at PC164: Overwrote pending register: R10 in 'AssignReg'

-- DECOMPILER ERROR at PC165: Overwrote pending register: R11 in 'AssignReg'

-- DECOMPILER ERROR at PC166: Overwrote pending register: R12 in 'AssignReg'

-- DECOMPILER ERROR at PC167: Overwrote pending register: R13 in 'AssignReg'

-- DECOMPILER ERROR at PC168: Overwrote pending register: R14 in 'AssignReg'

-- DECOMPILER ERROR at PC169: Overwrote pending register: R15 in 'AssignReg'

-- DECOMPILER ERROR at PC170: Overwrote pending register: R16 in 'AssignReg'

-- DECOMPILER ERROR at PC171: Overwrote pending register: R17 in 'AssignReg'

-- DECOMPILER ERROR at PC172: Overwrote pending register: R18 in 'AssignReg'

-- DECOMPILER ERROR at PC173: Overwrote pending register: R19 in 'AssignReg'

-- DECOMPILER ERROR at PC174: Overwrote pending register: R20 in 'AssignReg'

-- DECOMPILER ERROR at PC175: Overwrote pending register: R21 in 'AssignReg'

-- DECOMPILER ERROR at PC176: Overwrote pending register: R22 in 'AssignReg'

-- DECOMPILER ERROR at PC177: Overwrote pending register: R23 in 'AssignReg'

-- DECOMPILER ERROR at PC178: Overwrote pending register: R24 in 'AssignReg'

-- DECOMPILER ERROR at PC179: Overwrote pending register: R25 in 'AssignReg'

-- DECOMPILER ERROR at PC180: No list found for R5 , SetList fails

local l_0_6 = {}
-- DECOMPILER ERROR at PC182: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC183: Overwrote pending register: R8 in 'AssignReg'

-- DECOMPILER ERROR at PC184: Overwrote pending register: R9 in 'AssignReg'

-- DECOMPILER ERROR at PC185: Overwrote pending register: R10 in 'AssignReg'

-- DECOMPILER ERROR at PC186: Overwrote pending register: R11 in 'AssignReg'

-- DECOMPILER ERROR at PC187: Overwrote pending register: R12 in 'AssignReg'

-- DECOMPILER ERROR at PC188: Overwrote pending register: R13 in 'AssignReg'

-- DECOMPILER ERROR at PC189: Overwrote pending register: R14 in 'AssignReg'

-- DECOMPILER ERROR at PC190: Overwrote pending register: R15 in 'AssignReg'

-- DECOMPILER ERROR at PC191: Overwrote pending register: R16 in 'AssignReg'

-- DECOMPILER ERROR at PC192: No list found for R6 , SetList fails

-- DECOMPILER ERROR at PC193: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC195: Overwrote pending register: R8 in 'AssignReg'

local l_0_7 = (("pwd").lower)("pasword")
local l_0_8 = {}
-- DECOMPILER ERROR at PC198: Overwrote pending register: R9 in 'AssignReg'

-- DECOMPILER ERROR at PC199: Overwrote pending register: R10 in 'AssignReg'

-- DECOMPILER ERROR at PC200: Overwrote pending register: R11 in 'AssignReg'

for l_0_12 = "code", "key", "credential" do
  -- DECOMPILER ERROR at PC202: Overwrote pending register: R13 in 'AssignReg'

  -- DECOMPILER ERROR at PC204: Overwrote pending register: R14 in 'AssignReg'

  -- DECOMPILER ERROR at PC205: Overwrote pending register: R15 in 'AssignReg'

  -- DECOMPILER ERROR at PC206: Overwrote pending register: R16 in 'AssignReg'

  local l_0_13, l_0_14 = (("achinsinsi").find)("adgangskode", "contraseña", "contrasenya", true)
  while 1 do
    -- DECOMPILER ERROR at PC215: Overwrote pending register: R18 in 'AssignReg'

    if l_0_14 ~= nil then
      do
        local l_0_15 = (string.match)(l_0_3, "[%s:-=](%S+)", "cyfrinair")
        -- DECOMPILER ERROR at PC233: Overwrote pending register: R19 in 'AssignReg'

        -- DECOMPILER ERROR at PC268: Overwrote pending register: R15 in 'AssignReg'

        -- DECOMPILER ERROR at PC276: Overwrote pending register: R15 in 'AssignReg'

        if ((l_0_15 ~= nil and ((#l_0_15 >= 3 and not (string.match)(l_0_15, "^%p+$")) or l_0_15 ~= nil) and #l_0_15 >= 25) or #l_0_15 < 3 or ((string.sub)(l_0_15, 1, 1) ~= "\"" or (string.sub)(l_0_15, -1) == "\"" or table_hasvalue(l_0_8, l_0_15) == false)) then
          (table.insert)(l_0_8, l_0_15)
        end
        -- DECOMPILER ERROR at PC294: Overwrote pending register: R15 in 'AssignReg'

        -- DECOMPILER ERROR at PC309: Overwrote pending register: R15 in 'AssignReg'

        if l_0_15 ~= nil and #l_0_15 < 25 and #l_0_15 > 3 and table_hasvalue(l_0_8, l_0_15) == false then
          (table.insert)(l_0_8, l_0_15)
        end
        -- DECOMPILER ERROR at PC328: Overwrote pending register: R14 in 'AssignReg'

        -- DECOMPILER ERROR at PC329: Overwrote pending register: R13 in 'AssignReg'

        -- DECOMPILER ERROR at PC330: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC330: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
end
for l_0_19 in (string.gmatch)(l_0_3, "[:=%-]+%s*\"([^\"]+)\"%s*[\r\n]") do
  -- DECOMPILER ERROR at PC338: Overwrote pending register: R13 in 'AssignReg'

  -- DECOMPILER ERROR at PC339: Overwrote pending register: R14 in 'AssignReg'

  -- DECOMPILER ERROR at PC340: Overwrote pending register: R15 in 'AssignReg'

  if l_0_13(l_0_14, l_0_15) == false and #l_0_19 >= 3 and #l_0_19 < 25 then
    (table.insert)(l_0_8, l_0_19)
  end
end
for l_0_23 in (string.gmatch)(l_0_3, "[:=%-]+%s*(%S+)%s*[\r\n]") do
  if table_hasvalue(l_0_8, l_0_23) == false and #l_0_23 >= 3 and #l_0_23 < 25 then
    (table.insert)(l_0_8, l_0_23)
  end
end
local l_0_24 = function(l_1_0, l_1_1)
  -- function num : 0_0
  for l_1_5,l_1_6 in ipairs(l_1_1) do
    if (string.find)(l_1_0, l_1_6, 1, true) then
      return true
    end
  end
  return false
end

do
  local l_0_25 = {}
  for l_0_29 = 1, #l_0_8 do
    if not l_0_24((string.lower)(l_0_8[l_0_29]), l_0_6) then
      (table.insert)(l_0_25, l_0_8[l_0_29])
    end
  end
  if #l_0_25 > 0 then
    (mp.set_mpattribute)("//MpArchivePasswords=" .. (table.concat)(l_0_25, ";", 1, math_min(#l_0_25, 10)))
    return mp.INFECTED
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

