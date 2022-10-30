-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3279.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if not peattributes.isdll then
    return mp.CLEAN
  end
  if not peattributes.hasexports then
    return mp.CLEAN
  end
  if ((pehdr.DataDirectory)[1]).Size == 0 then
    return mp.CLEAN
  end
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
  local l_0_2 = {}
  l_0_2[".exe"] = true
  l_0_2[".dll"] = true
  l_0_2[".cpl"] = true
  l_0_2[".ocx"] = true
  l_0_2[".pyd"] = true
  l_0_2[".pyc"] = true
  if l_0_2[((string.lower)(l_0_1)):sub(-4)] then
    return mp.CLEAN
  end
  local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
  if not l_0_3:find("\160", 1, true) then
    return mp.CLEAN
  end
  if (l_0_1:find("^{?[%w%p]+}?%.{%w%w%w%w%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%w%w%w%w%w%w%w%w}$") or l_0_1:find("^%p%p%p+%.%d$")) and ((string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) == "msiexec.exe" or (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) == "rundll32.exe") then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

