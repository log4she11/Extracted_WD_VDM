-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/948.luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = {}
local l_0_2 = 150000000
local l_0_3 = (bm.GetSignatureMatchDuration)()
if l_0_2 < l_0_3 then
  return mp.CLEAN
end
do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).wp2 ~= nil then
    local l_0_4 = (string.lower)((this_sigattrlog[2]).utf8p2)
    if l_0_4 and (this_sigattrlog[2]).matched and (string.find)(l_0_4, "copy-as-is", 1, true) and (string.find)(l_0_4, "/usr/share/rear", 1, true) then
      return mp.CLEAN
    end
  end
  local l_0_5 = 0
  for l_0_9 = 1, l_0_0 do
    local l_0_10 = (sigattr_tail[l_0_9]).attribute
    if l_0_10 == 16388 then
      local l_0_11 = (sigattr_tail[l_0_9]).utf8p1
      if l_0_11 ~= nil and l_0_11 ~= "" and l_0_1[l_0_11] == nil and (isSensitiveFileForLinux(l_0_11) or (string.find)(l_0_11, ".pfx", -4, true) or (string.find)(l_0_11, ".key", -4, true) or (string.find)(l_0_11, ".ppk", -4, true) or (string.find)(l_0_11, ".keytab", 1, true) or (string.find)(l_0_11, ".htpasswd", 1, true) or (string.find)(l_0_11, "/private-keys-v1.d", 1, true) or (string.find)(l_0_11, "/secring.gpg", 1, true)) then
        l_0_1[l_0_11] = true
        ;
        (bm.add_related_file)(l_0_11)
        l_0_5 = l_0_5 + 1
      end
    end
  end
  if l_0_5 >= 10 then
    TrackPidAndTechniqueBM("BM", "T1560", "Collection_SensitiveFilesOpen")
    TrackPidAndTechniqueBM("BM", "T1552", "CredentialAccess")
    addRelatedProcess()
    reportRelatedBmHits()
    local l_0_12 = json_encode(l_0_1)
    ;
    (bm.add_related_string)("file_metadata", l_0_12, bm.RelatedStringBMReport)
    return mp.INFECTED
  end
  do
    return mp.CLEAN
  end
end

