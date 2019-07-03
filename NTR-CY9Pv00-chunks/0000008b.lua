if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(_text.C1_TC1_DOT_2, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.SetConversationCount(2)
    _util.AddDialog(_text.C1_PT_DOT_1, _const.CHANGE_NPC, _id.M1_T7_Rookie2, 3)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(_text.C1_TCRC_DOT_1, _const.END_DIALOG, 2)
  end
end
