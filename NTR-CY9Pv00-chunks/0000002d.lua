if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.SetVar("c1_trainingCaveRookiePlayed", 1)
    _util.AddDialog(_text.C1_TC3_ROOKIE_1, _const.CHANGE_NPC, _id.M1_TC4_Dot, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(_text.C1_TC3_ROOKIE_3, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.SetConversationCount(4, _id.M1_TC4_Rookie)
    _util.AddDialog(_text.C1_TC3_ROOKIE_4, _const.CHANGE_NPC, _id.M1_TC4_Dot, 6)
  elseif _util.GetConversationCount() == 3 then
    _util.SetConversationCount(4, _id.M1_TC4_Rookie)
    _util.AddDialog(_text.C1_TC3_ROOKIE_5, _const.CHANGE_NPC, _id.M1_TC4_Dot, 6)
  elseif _util.GetConversationCount() == 4 then
    _util.AddDialog(_text.C1_TC3_ROOKIE_6, _const.END_DIALOG, 4)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG then
  _util.SetConversationCount(5, _id.M1_TC4_Dot)
end
