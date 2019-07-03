local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.TOUCHED then
  if L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.SetConversationCount
    L3_3(10)
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_SKI2_JPG_1)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M11_SKI2_A_1, _const.CHANGE_NPC, _id.M11_VillageRookie, 0)
  elseif L2_2 == 10 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_SKI3_JPG_GREET)
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("ShutDownHerbert", 1)
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_SKI3_JPG_1, _const.CHANGE_NPC, _id.M11_VillageHerbert, 1)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.SetConversationCount
    L3_3(20)
    L3_3 = _util
    L3_3 = L3_3.SetConversationCount
    L3_3(20, _id.M11_VillageNPCP1)
    L3_3 = _util
    L3_3 = L3_3.SetConversationCount
    L3_3(21, _id.M11_VillageNPCP2)
    L3_3 = _util
    L3_3 = L3_3.SetConversationCount
    L3_3(24, _id.M11_VillageNPCBrownP)
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_SKI3_JPG_2, _const.CHANGE_NPC, _id.M11_VillageRookieDVD, 6)
  elseif L2_2 == 20 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_SKI3_JPG_2, _const.END_DIALOG, -1, 20)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_SKI_JPG_5)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M11_MINE_A_1, _const.CHANGE_DIALOG, -1, 4)
  elseif L2_2 == 4 then
    function L3_3()
      local L0_4, L1_5, L2_6
      L0_4 = _util
      L0_4 = L0_4.DisableInput
      L0_4()
      L0_4 = _util
      L0_4 = L0_4.ChangeBaseAnim
      L1_5 = "NPC/M1/JetPackGuy/jpg_Blast"
      L0_4(L1_5)
      L0_4 = 840
      L1_5 = -10
      L2_6 = 75
      _util.MoveObject(_util.GetSelf(), L0_4, L1_5, L2_6, 1)
      repeat
        scriptWait()
      until _util.GetY(_util.GetSelf()) == L1_5
      _util.EnableInput()
      _util.ActivateNpc(_id.M11_VillageRookie, 80)
    end
    scriptPlay(L3_3)
  end
end
