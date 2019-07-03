if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M6_skiLodgeNoise") == 1 then
    if _util.GetConversationCount() == 15 then
      _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_NOISE_GREETA2, _const.END_DIALOG, 0)
      _util.SetVar("M6_skiLodgeNoise", 2)
    elseif _util.GetConversationCount() == 16 then
      _util.AddLoopingConv(_text.M6_SKIVILLAGE_NPCS_NOISE_GREETQ1_A)
      _util.AddLoopingOption(_text.M6_SKIVILLAGE_NPCS_NOISE_GREETQ2, -1, _const.CHANGE_DIALOG, 17)
    elseif _util.GetConversationCount() == 17 then
      _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_NOISE_GREETQ2_A, _const.END_DIALOG, 0)
      _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/blue")
      _util.SetVar("M6_skiLodgeNoise", 2)
    else
      _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/blueLook1")
      _util.AddLoopingConv(_text.M6_SKIVILLAGE_NPCS_NOISE_GREETB)
      _util.AddLoopingOption(_text.M6_SKIVILLAGE_NPCS_NOISE_GREETQ1, -1, _const.CHANGE_DIALOG, 16)
    end
  elseif _util.GetVar("M6_TlatorBroken") == 1 and _util.GetVar("M6_skiLodgeNoise") == 0 and _util.GetVar("M6_skiVillageNpcTalk") == 0 then
    if _util.GetConversationCount() == 1 then
      _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/blue")
      _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET2, _const.CHANGE_DIALOG, 0)
    elseif _util.GetConversationCount() == 2 then
      _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/blueLook2")
      _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_A1_2B, _const.CHANGE_NPC, _id.SkiVillage_NPC1, 4)
    elseif _util.GetConversationCount() == 3 then
      _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_A2_B1, _const.CHANGE_NPC, _id.SkiVillage_NPC1, 4)
    elseif _util.GetConversationCount() == 4 then
      _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/brown", _id.SkiVillage_NPC1)
      _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/blue")
      _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_QUITRESPONSE, _const.END_DIALOG, 0)
    elseif _util.GetConversationCount() == 5 then
      _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_C1_2D, _const.CHANGE_NPC, _id.SkiVillage_NPC1, 6)
    else
      _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/blueLook1")
      _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/brownLook2", _id.SkiVillage_NPC1)
      _util.AddLoopingConv(_text.M6_SKIVILLAGE_NPCS_GREET3)
      _util.AddLoopingOption(_text.M6_SKIVILLAGE_NPCS_Q1, -1, _const.CHANGE_DIALOG, 2)
      _util.AddLoopingOption(_text.M6_SKIVILLAGE_NPCS_Q2, -1, _const.CHANGE_DIALOG, 3)
      _util.AddLoopingOption(_text.M6_SKIVILLAGE_NPCS_QUIT, -1, _const.CHANGE_DIALOG, 4)
    end
  elseif _util.GetConversationCount() == 9 then
    _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/blue")
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET5, _const.CHANGE_NPC, _id.SkiVillage_NPC1, 10)
    _util.SetConversationCount(11)
  elseif _util.GetConversationCount() == 11 then
    _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/blue")
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET6, _const.CHANGE_NPC, _id.SkiVillage_NPC1, 12)
    _util.SetConversationCount(13)
  elseif _util.GetConversationCount() == 13 then
    _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/blue")
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET7, _const.CHANGE_NPC, _id.SkiVillage_NPC1, 14)
    _util.SetConversationCount(100)
  else
    _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/blue")
    _util.SwitchState("", _id.SkiVillage_NPC1)
    _util.AddDialog(_text.M6_SKIVILLAGE_NPCS_GREET4, _const.CHANGE_NPC, _id.SkiVillage_NPC1, 8)
    _util.SetConversationCount(9)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG then
  _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/brown", _id.SkiVillage_NPC1, "")
  _util.ChangeBaseAnim("NPC/QuestionsCrab/SkiVillageNPCs/blue", _id.SkiVillage_NPC2, "")
end
