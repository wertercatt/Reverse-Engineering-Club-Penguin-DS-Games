if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.SetVar("c1_talkedToDot_ScaleWall", 1)
    _util.AddNPCText(_text.C1_TC5_DOT_1, _const.CHANGE_NPC, _id.M1_T6_Rookie, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.C1_TC5_DOT_2, _const.CHANGE_NPC, _id.M1_T6_JPG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.C1_TC5_DOT_4, _const.END_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddNPCText(_text.C1_TC5_DOT_5, _const.END_DIALOG, 3)
  elseif _util.GetConversationCount() == 4 then
    _util.AddLoopingConv(_text.C1_TC5_DOT_6)
    _util.AddLoopingOption(_text.C1_TC5_A_6, -1, _const.CHANGE_NPC, _id.M1_T6_JPG, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddLoopingConv(_text.C1_TC5_DOT_7)
    _util.AddLoopingOption(_text.C1_TC5_A_7, -1, _const.CHANGE_NPC, _id.M1_T6_JPG, 6)
  elseif _util.GetConversationCount() == 6 then
  end
end
