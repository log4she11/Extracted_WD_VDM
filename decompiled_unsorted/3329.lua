-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3329.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 20480 then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("BM_LNK_FILE") and not (mp.get_mpattribute)("PACKED_WITH:[CMDEmbedded]") then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = tostring((mp.readfile)(64, l_0_0 - 64))
if l_0_1 == nil then
  return mp.CLEAN
end
if (mp.get_mpattribute)("Lua:LNK_Settings!IsUnicode") then
  l_0_1 = (string.gsub)(l_0_1, "%z", "")
  if l_0_1 == nil then
    return mp.CLEAN
  end
end
local l_0_2 = {}
local l_0_3 = 0
for l_0_7 in l_0_1:gmatch("[sS][Ee][Tt] [%w]+%s*=%s*[%w%.]+") do
  local l_0_8 = l_0_7:match("([sS][Ee][Tt] [%w.]+)", 1, true)
  if l_0_8 ~= nil and #l_0_8 > 5 then
    local l_0_9 = (string.sub)(l_0_8, 5)
    if l_0_9 == nil then
      return mp.CLEAN
    end
    if l_0_2[l_0_9] ~= 1 then
      local l_0_10 = "%" .. l_0_9 .. "%"
      local l_0_11 = "!" .. l_0_9 .. "!"
      local l_0_12 = "%" .. l_0_9 .. ":"
      l_0_2[l_0_9] = 1
      if l_0_1:find(l_0_10, 1, true) ~= nil then
        l_0_3 = l_0_3 + 1
        ;
        (mp.set_mpattribute)("Lua:LnkHasEnvWithPercent")
      else
        if l_0_1:find(l_0_11, 1, true) ~= nil then
          l_0_3 = l_0_3 + 1
          ;
          (mp.set_mpattribute)("Lua:LnkHasEnvWithBang")
        else
          if l_0_1:find(l_0_12, 1, true) ~= nil then
            l_0_3 = l_0_3 + 1
            ;
            (mp.set_mpattribute)("Lua:LnkHasEnvWithPercentColon")
          end
        end
      end
      if l_0_3 > 2 then
        return mp.INFECTED
      end
    end
  end
end
return mp.CLEAN

