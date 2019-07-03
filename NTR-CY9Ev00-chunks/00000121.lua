if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.SwitchState("", _id.SkiVillage_NPC2)
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET2, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(_text.M6_SKIVILLAGE_NPCS_GREET3)
    _util.AddLoopingOption(_text.M6_SKIVILLAGE_NPCS_Q1, -1, _const.CHANGE_DIALOG, 3)
    _util.AddLoopingOption(_text.M6_SKIVILLAGE_NPCS_Q2, -1, _const.CHANGE_DIALOG, 30)
    _util.AddLoopingOption(_text.M6_SKIVILLAGE_NPCS_QUIT, -1, _const.CHANGE_DIALOG, 300)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_A1_2B, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 30 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_A2_B1, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 300 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_QUITRESPONSE, _const.END_DIALOG, 2)
  elseif _util.GetConversationCount() == 4 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_B1_2C, _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_C1_2D, _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_D1_2E, _const.END_DIALOG, 7)
  elseif _util.GetConversationCount() == 7 then
    _util.SwitchState("", _id.SkiVillage_NPC1)
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET4, _const.CHANGE_DIALOG, 8)
  elseif _util.GetConversationCount() == 8 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET4_2, _const.END_DIALOG, 9)
  elseif _util.GetConversationCount() == 9 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET5, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET5_2, _const.END_DIALOG, 11)
  elseif _util.GetConversationCount() == 11 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET6, _const.CHANGE_DIALOG, 12)
  elseif _util.GetConversationCount() == 12 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET6_2, _const.END_DIALOG, 13)
  elseif _util.GetConversationCount() == 13 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET7, _const.CHANGE_DIALOG, 14)
  elseif _util.GetConversationCount() == 14 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET7_2, _const.END_DIALOG, 7)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG then
  _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/brown", _id.SkiVillage_NPC1, "")
  _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/blue", _id.SkiVillage_NPC2, "")
end
