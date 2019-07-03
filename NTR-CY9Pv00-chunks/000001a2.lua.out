if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(_text.C1_TC2_DOT_1, _const.CHANGE_NPC, _id.M1_T3_JPG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(_text.C1_TC2_DOT_3, _const.CHANGE_NPC, _id.M1_T3_JPG, 3)
  elseif _util.GetConversationCount() == 2 then
    _util.SetConversationCount(4, _id.M1_T3_JPG)
    _util.AddDialog(_text.C1_TC2_DOT_5, _const.END_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(_text.C1_TC2_DOT_5, _const.END_DIALOG, 3)
  end
end
