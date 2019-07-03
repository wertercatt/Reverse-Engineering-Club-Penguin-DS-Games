if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddNPCText(_text.C1_TC1_JPG_2, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 6 then
    _util.AddDialog(_text.C1_TCPC_ROOKIE_1)
    _util.AddPlayerOption(_text.C1_TCPC_A_2A, _const.CHANGE_NPC, _id.M1_TC_PuffleHandler, 4)
    _util.AddPlayerOption(_text.C1_TCPC_A_2B, _const.CHANGE_NPC, _id.M1_TC_PuffleHandler, 6)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(_text.C1_TCPC_ROOKIE_2A_1)
    _util.AddPlayerOption(_text.C1_TCPC_PH_2A_3, _const.CHANGE_NPC, _id.M1_TC_PuffleHandler, 4)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.C1_PT_ROOKIE_1, _const.CHANGE_NPC, _id.M1_T7_Dot2, 1)
  elseif _util.GetConversationCount() == 3 then
    _util.AddNPCText(_text.C1_PT_ROOKIE_2, _const.CHANGE_NPC, _id.M1_T7_JPG2, 1)
  elseif _util.GetConversationCount() == 4 then
    _util.AddNPCText(_text.C1_PT_ROOKIE_3, _const.CHANGE_NPC, _id.M1_TC_PuffleHandler, 11)
  elseif _util.GetConversationCount() == 5 then
    _util.ChangeBaseAnim("NPC/M1/Rookie/RookieCave2_Question", _id.M1_T7_Rookie2)
    _util.AddNPCText(_text.C1_TCRC_ROOKIE_1, _const.CHANGE_NPC, _id.M1_TC_Director, 3)
  end
end
