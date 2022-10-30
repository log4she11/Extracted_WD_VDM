-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4089.luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = {}
local l_0_2 = {}
local l_0_3 = 0
local l_0_4 = 150000000
if l_0_4 < (bm.GetSignatureMatchDuration)() then
  return mp.CLEAN
end
for l_0_8 = 1, l_0_0 do
  local l_0_9 = (sigattr_tail[l_0_8]).attribute
  if l_0_9 == 16385 and (sigattr_tail[l_0_8]).utf8p1 ~= nil then
    local l_0_10 = (sigattr_tail[l_0_8]).utf8p1
    if l_0_2[l_0_10] == nil then
      l_0_2[l_0_10] = true
      ;
      (bm.add_related_file)(l_0_10)
      local l_0_11 = l_0_10:match("%.[^/%.]+$")
      if l_0_11 ~= nil then
        if l_0_1[l_0_11] == nil then
          l_0_3 = l_0_3 + 1
          l_0_1[l_0_11] = 1
        else
          l_0_1[l_0_11] = l_0_1[l_0_11] + 1
        end
      end
    end
  end
end
local l_0_12 = 0
for l_0_16,l_0_17 in pairs(l_0_1) do
  if l_0_12 < l_0_17 then
    l_0_12 = l_0_17
  end
end
if l_0_3 < 3 and l_0_12 >= 5 then
  addRelatedProcess()
  reportRelatedBmHits()
  TrackPidAndTechniqueBM("BM", "T1486", "Impact_CcryptEncryption")
  RemediateProcessTreeForLinux()
  return mp.INFECTED
end
return mp.CLEAN

