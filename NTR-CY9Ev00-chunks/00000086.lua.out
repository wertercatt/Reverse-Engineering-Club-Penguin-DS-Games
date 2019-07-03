if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(_text.C1_TC2_JPG_1, _const.CHANGE_NPC, _id.M1_T3_Dot, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddLoopingConv(_text.C1_TC2_JPG_2)
    _util.AddLoopingOption(_text.C1_TC2_A_2A, -1, _const.CHANGE_NPC, _id.M1_T3_Rookie, 1)
    _util.AddLoopingOption(_text.C1_TC2_A_2B, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(_text.C1_TC2_JPG_3, _const.CHANGE_NPC, _id.M1_T3_Dot, 1)
  elseif _util.GetConversationCount() == 3 then
    _util.SetConversationCount(4)
    _util.AddDialog(_text.C1_TC2_JPG_4, _const.CHANGE_NPC, _id.M1_T3_Rookie, 1)
  elseif _util.GetConversationCount() == 4 then
    _util.AddDialog(_text.C1_TC2_A_2A, _const.END_DIALOG, 4)
  end
end
