if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.ChangeBaseAnim("NPC/SecretFur/LodgeNPC/lodgeNPC")
    _util.AddLoopingConv(_text.M5_SKILODGE_NPC_GREET)
    _util.AddLoopingOption(_text.M5_SKILODGE_NPC_Q1, -1, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(_text.M5_SKILODGE_NPC_Q2, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(_text.M5_SKILODGE_NPC_A1_2B, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.ChangeBaseAnim("NPC/SecretFur/LodgeNPC/lodgeNPCScared")
    _util.AddDialog(_text.M5_SKILODGE_NPC_B1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(_text.M5_SKILODGE_NPC_A2, _const.END_DIALOG, 0)
  end
end
