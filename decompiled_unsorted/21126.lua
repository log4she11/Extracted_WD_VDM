-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21126.luac 

-- params : ...
-- function num : 0
local l_0_0 = tonumber((nri.GetHttpResponseHeader)("Content-Length"))
if l_0_0 > 15000 then
  return mp.CLEAN
end
local l_0_1 = (nri.GetRawResponseBlob)()
if l_0_1 ~= nil then
  local l_0_2 = {}
  -- DECOMPILER ERROR at PC21: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC22: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC23: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC24: Overwrote pending register: R5 in 'AssignReg'

  if ("exec")("exploit", "binary") then
    local l_0_3 = {}
    -- DECOMPILER ERROR at PC31: Overwrote pending register: R6 in 'AssignReg'

    -- DECOMPILER ERROR at PC38: No list found for R3 , SetList fails

    -- DECOMPILER ERROR at PC39: Overwrote pending register: R4 in 'AssignReg'

    -- DECOMPILER ERROR at PC40: Overwrote pending register: R5 in 'AssignReg'

    -- DECOMPILER ERROR at PC41: Overwrote pending register: R6 in 'AssignReg'

    if ("wget")("curl", "start") then
      local l_0_4 = reportHeaders
      local l_0_5 = {}
      -- DECOMPILER ERROR at PC48: Overwrote pending register: R7 in 'AssignReg'

      -- DECOMPILER ERROR at PC49: No list found for R5 , SetList fails

      l_0_4(l_0_5)
      -- DECOMPILER ERROR at PC52: Overwrote pending register: R4 in 'AssignReg'

      return l_0_4
    end
  end
end
do
  do
    do return mp.CLEAN end
    -- WARNING: undefined locals caused missing assignments!
  end
end

