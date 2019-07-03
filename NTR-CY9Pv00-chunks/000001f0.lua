local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.ChangeBaseAnim
    L1_1("NPC/M11/JetPackGuy/jpgHQHerb", _id.M11_HQ_JPG)
    L1_1 = _util
    L1_1 = L1_1.ChangeBaseAnim
    L1_1("NPC/M11/Rookie/RookieHerb", _id.M11_HQ_Rookie)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_4, _const.CHANGE_NPC, _id.M11_HQ_Rookie, 0)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_5, _const.CHANGE_DIALOG, -1, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_6, _const.CHANGE_DIALOG, -1, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_7, _const.CHANGE_NPC, _id.M11_HQ_Rookie, 1)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_8, _const.CHANGE_NPC, _id.M11_HQ_Rookie, 3)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_9)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.M11_HQ2_A_9A, _const.CHANGE_DIALOG, -1, 6)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.M11_HQ2_A_9B, _const.CHANGE_DIALOG, -1, 7)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.M11_HQ2_A_9C, _const.CHANGE_DIALOG, -1, 8)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_10A, _const.CHANGE_DIALOG, -1, 9)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_10B, _const.CHANGE_DIALOG, -1, 9)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_10C, _const.CHANGE_DIALOG, -1, 9)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_11, _const.CHANGE_NPC, _id.M11_HQ_Rookie, 4)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_12)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.M11_HQ2_A_12, _const.CHANGE_DIALOG, -1, 11)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_13, _const.CHANGE_NPC, _id.M11_HQ_Rookie, 5)
  elseif L0_0 == 12 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_14)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.M11_HQ2_A_14A, _const.CHANGE_DIALOG, -1, 13)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.M11_HQ2_A_14B, _const.CHANGE_DIALOG, -1, 13)
  elseif L0_0 == 13 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_15, _const.CHANGE_DIALOG, -1, 21)
  elseif L0_0 == 21 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_KLUTZY, _const.CHANGE_DIALOG, -1, 14)
  elseif L0_0 == 14 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_16, _const.CHANGE_NPC, _id.M11_HQ_Rookie, 6)
  elseif L0_0 == 15 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_17, _const.CHANGE_DIALOG, -1, 16)
  elseif L0_0 == 16 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ2_HERBERT_18, _const.CHANGE_DIALOG, -1, 17)
  elseif L0_0 == 17 then
    function L1_1()
      _util.DisableInput()
      _util.PushCamera(_id.M11_HQHerbertScreen)
      _util.SwitchState("staticEnd", _id.M11_HQHerbertScreen)
      _util.SwitchState("staticEnd", _id.M11_HQHerbertScreenLeft)
      _util.SwitchState("staticEnd", _id.M11_HQHerbertScreenRight)
      _util.RestoreSongFromHerbert()
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M11_HQHerbertScreen)
      _util.PopCamera(_id.M11_HQHerbertScreen)
      _util.DelItem(_id.M11_HQHerbertScreen)
      _util.DelItem(_id.M11_HQHerbertScreenLeft)
      _util.DelItem(_id.M11_HQHerbertScreenRight)
      _util.AddItem(_id.M11_VillageHerbertBG)
      _util.AddItem(_id.M11_VillageHerbert)
      _util.AddItem(_id.M11_VillageNPCP1)
      _util.AddItem(_id.M11_VillageNPCP2)
      _util.AddItem(_id.M11_VillageNPCBrownP)
      _util.SetConversationCount(20, _id.M11_VillageNPCP1)
      _util.SetConversationCount(21, _id.M11_VillageNPCP2)
      _util.SetConversationCount(23, _id.M11_VillageNPCBrownP)
      _util.DelItem(_id.M11_VillageNPCP1Marb)
      _util.DelItem(_id.M11_VillageNPCP2Marb)
      _util.DelItem(_id.M11_VillageNPCP3Marb)
      _util.DelItem(_id.M11_VillageStatic)
      _util.EnableInput()
      _util.ActivateNpc(_id.M11_HQGaryScreen, 29)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 18 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ3_HERBERT_2, _const.CHANGE_DIALOG, -1, 19)
  elseif L0_0 == 19 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ3_HERBERT_3, _const.CHANGE_DIALOG, -1, 20)
  elseif L0_0 == 20 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M11_HQ3_HERBERT_4, _const.CHANGE_NPC, _id.M11_HQ_JPG, 0)
  end
end
