if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddNPCText(_text.M11_PH_Villiage_DOTA_A1, _const.CHANGE_DIALOG, -1, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.M11_PH_Villiage_DOTA_A2, _const.END_MISSION)
    _util.AddPlayerOption(_text.M11_SKI4_A_1A, _const.CHANGE_DIALOG, -1, 7)
    _util.AddPlayerOption(_text.M11_SKI4_A_1B, _const.CHANGE_DIALOG, -1, 7)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.M11_SKI4_DOT_2)
    _util.AddPlayerOption(_text.M11_SKI4_A_2A, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetConversationCount() == 7 then
    _util.AddNPCText(_text.M11_SKI4_DOT_2)
    _util.AddPlayerOption(_text.M11_SKI4_A_2B, _const.CHANGE_DIALOG, -1, 2)
  elseif _util.GetConversationCount() == 3 then
    _util.AddNPCText(_text.M11_SKI4_DOT_3, _const.CHANGE_NPC, _id.M11_VillageGary, 2)
  elseif _util.GetConversationCount() == 4 then
    _util.AddNPCText(_text.M11_SKI4_DOT_5, _const.CHANGE_NPC, _id.M11_VillageRookiePop, 11)
  elseif _util.GetConversationCount() == 5 then
    _util.AddNPCText(_text.M11_SKI4_DOT_6, _const.CHANGE_DIALOG, -1, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.AddNPCText(_text.M11_SKI4_DOT_7, _const.CHANGE_NPC, _id.M11_VillageGary, 6)
  end
end
