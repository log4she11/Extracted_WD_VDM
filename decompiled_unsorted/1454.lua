-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1454.luac 

-- params : ...
-- function num : 0
local l_0_0 = reportHeaders
local l_0_1 = {}
-- DECOMPILER ERROR at PC4: No list found for R1 , SetList fails

l_0_0(l_0_1)
-- DECOMPILER ERROR at PC7: Overwrote pending register: R2 in 'AssignReg'

if ("Host").SIGATTR_LOG_SZ == 0 then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC16: Overwrote pending register: R3 in 'AssignReg'

for l_0_5 = mp.SIGATTR_LOG_SZ, "User-Agent", -1 do
  do
    do
      local l_0_6 = sigattr_tail[l_0_5]
      -- DECOMPILER ERROR at PC30: Overwrote pending register: R0 in 'AssignReg'

      -- DECOMPILER ERROR at PC41: Overwrote pending register: R1 in 'AssignReg'

      -- DECOMPILER ERROR at PC46: Unhandled construct in 'MakeBoolean' P3

      -- DECOMPILER ERROR at PC46: Unhandled construct in 'MakeBoolean' P3

      if ((l_0_6.attribute == 28768 and l_0_6.matched and l_0_6.utf8p1 and l_0_6.attribute ~= 28769) or l_0_0) and l_0_1 then
        break
      end
      -- DECOMPILER ERROR at PC47: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end
if not l_0_0 or not l_0_1 then
  return mp.CLEAN
end
local l_0_7 = l_0_0 .. ":" .. l_0_1
local l_0_8 = {}
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:ae4edc6faf64d08308082ad26be60767"] = true
l_0_8["72a589da586844d7f0818ce684948eea:ae4edc6faf64d08308082ad26be60767"] = true
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:f176ba63b4d68e576b5ba345bec2c7b7"] = true
l_0_8["d0ec4b50a944b182fc10ff51f883ccf7:ae4edc6faf64d08308082ad26be60767"] = true
l_0_8["294b2f1dc22c6e6c3231d2fe311d504b:ae4edc6faf64d08308082ad26be60767"] = true
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:e35df3e00ca4ef31d42b34bebaa2f86e"] = true
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:fd4bc6cea4877646ccd62f0792ec0b62"] = true
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:46e8c907c5cc3cf4b4420e76da5b4dba"] = true
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:b31c0b82752ea0e2c48b8ce46e9263e5"] = true
l_0_8["72a589da586844d7f0818ce684948eea:fd4bc6cea4877646ccd62f0792ec0b62"] = true
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:6d6b821affda5de6562d217770a7ead0"] = true
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:567bb420d39046dbfd1f68b558d86382"] = true
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:ec74a5c51106f0419184d0dd08fb05bc"] = true
l_0_8["51c64c77e60f3980eea90869b68c58a8:ae4edc6faf64d08308082ad26be60767"] = true
l_0_8["72a589da586844d7f0818ce684948eea:8cb68dc6ad0365d44af24b254ef70844"] = true
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:b7bd51222a09f3ad66a340710ae9c01a"] = true
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:8cb68dc6ad0365d44af24b254ef70844"] = true
l_0_8["d0ec4b50a944b182fc10ff51f883ccf7:b31c0b82752ea0e2c48b8ce46e9263e5"] = true
l_0_8["ce5f3254611a8c095a3d821d44539877:ae4edc6faf64d08308082ad26be60767"] = true
l_0_8["d0ec4b50a944b182fc10ff51f883ccf7:758945630046fd37070521b8544d1fe8"] = true
l_0_8["8916410db85077a5460817142dcbc8de:ae4edc6faf64d08308082ad26be60767"] = true
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:394441ab65754e2207b1e1b457b3641d"] = true
l_0_8["72a589da586844d7f0818ce684948eea:1af33e1657631357c73119488045302c"] = true
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:ccc514751b175866924439bdbb5bba34"] = true
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:beb7069ae409bccfed702c17ad004223"] = true
l_0_8["1770c51ee209c73547f5e53e366b6152:46e8c907c5cc3cf4b4420e76da5b4dba"] = true
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:1af33e1657631357c73119488045302c"] = true
l_0_8["51c64c77e60f3980eea90869b68c58a8:1af33e1657631357c73119488045302c"] = true
l_0_8["d0ec4b50a944b182fc10ff51f883ccf7:f176ba63b4d68e576b5ba345bec2c7b7"] = true
l_0_8["d0ec4b50a944b182fc10ff51f883ccf7:fd4bc6cea4877646ccd62f0792ec0b62"] = true
l_0_8["8916410db85077a5460817142dcbc8de:fd4bc6cea4877646ccd62f0792ec0b62"] = true
l_0_8["c35a61411ee5bdf666b4d64b05c29e64:ae4edc6faf64d08308082ad26be60767"] = true
l_0_8["d0ec4b50a944b182fc10ff51f883ccf7:6d6b821affda5de6562d217770a7ead0"] = true
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:466556e923186364e82cbdb4cad8df2c"] = true
l_0_8["72a589da586844d7f0818ce684948eea:649d6810e8392f63dc311eecb6b7098b"] = true
l_0_8["d0ec4b50a944b182fc10ff51f883ccf7:84aaf6d03fc8c5bfb56d1d188735b268"] = true
l_0_8["a0e9f5d64349fb13191bc781f81f42e1:098e26e2609212ac1bfac552fbe04127"] = true
if not l_0_8[l_0_7] then
  return mp.CLEAN
end
local l_0_9 = {}
l_0_9.TlsJa3CHash = l_0_0
l_0_9.TlsJa3SHash = l_0_1
;
(nri.AddTelemetry)((mp.bitor)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), l_0_9)
return mp.INFECTED

