if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(_text.C1_TC1_ROOKIE_1, _const.CHANGE_NPC, _id.M1_TC1_Dot, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(_text.C1_TC1_ROOKIE_2, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(_text.C1_TC1_ROOKIE_3, _const.CHANGE_NPC, _id.M1_TC1_Dot, 2)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(_text.C1_TC1_ROOKIE_4, _const.END_DIALOG, 3)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG then
  _util.SetConversationCount(3, _id.M1_TC1_Dot)
end
