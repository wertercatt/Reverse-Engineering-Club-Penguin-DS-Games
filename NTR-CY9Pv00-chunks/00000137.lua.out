if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M6_skiLodgeNoise") == 1 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_NOISE_GREETA, _const.CHANGE_NPC, _id.SkiVillage_NPC2, 15)
  elseif _util.GetVar("M6_TlatorBroken") == 1 and _util.GetVar("M6_skiLodgeNoise") == 0 and _util.GetVar("M6_skiVillageNpcTalk") == 0 then
    if _util.GetConversationCount() == 4 then
      _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/brownLook1")
      _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_B1_2C, _const.CHANGE_NPC, _id.SkiVillage_NPC2, 5)
    elseif _util.GetConversationCount() == 6 then
      _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/brownLook2")
      _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_D1_2E, _const.END_DIALOG, 0)
      _util.SetVar("M6_skiVillageNpcTalk", 1)
    else
      _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/brown")
      _util.SwitchState("", _id.SkiVillage_NPC2)
      _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET, _const.CHANGE_NPC, _id.SkiVillage_NPC2, 1)
    end
  elseif _util.GetConversationCount() == 8 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET4_2, _const.END_DIALOG, 9)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET5_2, _const.END_DIALOG, 11)
  elseif _util.GetConversationCount() == 12 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET6_2, _const.END_DIALOG, 13)
  elseif _util.GetConversationCount() == 14 then
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET7_2, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 9 then
    _util.ActivateNpc(_id.SkiVillage_NPC2, 9)
  elseif _util.GetConversationCount() == 11 then
    _util.ActivateNpc(_id.SkiVillage_NPC2, 11)
  elseif _util.GetConversationCount() == 13 then
    _util.ActivateNpc(_id.SkiVillage_NPC2, 13)
  else
    _util.ActivateNpc(_id.SkiVillage_NPC2, 100)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG then
  _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/brown", _id.SkiVillage_NPC1, "")
  _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/blue", _id.SkiVillage_NPC2, "")
end
