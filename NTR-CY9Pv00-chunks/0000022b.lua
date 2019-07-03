if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddNPCText(_text.C4_SV_ROOKIE_1, _const.CHANGE_NPC, _id.C4_SkiVillage_Herb, 41)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.C4_SV_ROOKIE_2)
    _util.AddPlayerOption(_text.C4_SV_ROOKIE_2A, _const.CHANGE_DIALOG, -1, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.C4_SV_ROOKIE_3)
    _util.AddPlayerOption(_text.C4_SV_ROOKIE_3A, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddNPCText(_text.C4_SV_ROOKIE_4, _const.CHANGE_NPC, _id.C4_SkiVillage_Herb, 42)
  end
end
