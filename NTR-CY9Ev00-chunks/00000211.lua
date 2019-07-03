local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.TOUCHED
if L1_1 == L2_2 then
  function L1_1()
    _util.AddPlayerOption(_text.C2_CR_A_6A, _const.CHANGE_DIALOG, -1, 7)
    _util.AddPlayerOption(_text.C2_CR_A_6C, _const.CHANGE_DIALOG, -1, 9)
    _util.AddPlayerOption(_text.C2_CR_A_6B, _const.CHANGE_DIALOG, -1, 10)
  end
  if L0_0 == 0 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_DOT_GREET_REM, _const.END_DIALOG, 0)
  elseif L0_0 == 1 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_DOT_1)
    L2_2 = _util
    L2_2 = L2_2.AddPlayerOption
    L2_2(_text.C2_CR_A_4A, _const.CHANGE_DIALOG, -1, 4)
    L2_2 = _util
    L2_2 = L2_2.AddPlayerOption
    L2_2(_text.C2_CR_A_4B, _const.CHANGE_DIALOG, -1, 2)
  elseif L0_0 == 2 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_DOT_2)
    L2_2 = _util
    L2_2 = L2_2.AddPlayerOption
    L2_2(_text.C2_CR_A_5, _const.CHANGE_DIALOG, -1, 3)
  elseif L0_0 == 3 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_DOT_3, _const.CHANGE_DIALOG, -1, 4)
  elseif L0_0 == 4 then
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("GrabTheCostume", 1)
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_DOT_4, _const.CHANGE_NPC, _id.C2_CR_Gary, 7)
  elseif L0_0 == 5 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_DOT_5, _const.CHANGE_DIALOG, -1, 6)
  elseif L0_0 == 6 then
    L2_2 = _util
    L2_2 = L2_2.IsSuitcaseItemEquipped
    L2_2 = L2_2(_id.SuitCase_CrabCostume)
    if L2_2 then
      L2_2 = _util
      L2_2 = L2_2.AddNPCText
      L2_2(_text.C2_CR_DOT_6, _const.CHANGE_DIALOG, -1, 11)
    else
      L2_2 = _util
      L2_2 = L2_2.AddNPCText
      L2_2(_text.C2_CR_DOT_6)
      L2_2 = L1_1
      L2_2()
    end
  elseif L0_0 == 7 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_DOT_7, _const.CHANGE_DIALOG, -1, 8)
  elseif L0_0 == 8 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_DOT_8, _const.CHANGE_DIALOG, -1, 51)
  elseif L0_0 == 9 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_DOT_9, _const.CHANGE_DIALOG, -1, 51)
  elseif L0_0 == 10 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("C2_AskQues")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.AddNPCText
      L2_2(_text.C2_CR_DOT_10, _const.END_DIALOG, -1, 11)
      L2_2 = _util
      L2_2 = L2_2.SetConversationCount
      L2_2(50, _id.C2_CR_Director)
      L2_2 = _util
      L2_2 = L2_2.SetConversationCount
      L2_2(50, _id.C2_CR_Rookie)
      L2_2 = _util
      L2_2 = L2_2.SetConversationCount
      L2_2(50, _id.C2_CR_JPG)
      L2_2 = _util
      L2_2 = L2_2.SetConversationCount
      L2_2(52, _id.C2_CR_Gary)
    else
      L2_2 = _util
      L2_2 = L2_2.AddNPCText
      L2_2(_text.C2_CR_DOT_10, _const.CHANGE_NPC, _id.C2_CR_Director, 13)
    end
  elseif L0_0 == 11 then
    L2_2 = _util
    L2_2 = L2_2.IsSuitcaseItemEquipped
    L2_2 = L2_2(_id.SuitCase_CrabCostume)
    if L2_2 then
      L2_2 = _util
      L2_2 = L2_2.AddNPCText
      L2_2(_text.C2_CR_IDLE_CRAB_DOTB, _const.CHANGE_DIALOG, -1, 54)
    else
      L2_2 = _util
      L2_2 = L2_2.AddNPCText
      L2_2(_text.C2_CR_IDLE_CRAB_DOT, _const.END_DIALOG, -1, 11)
    end
  elseif L0_0 == 12 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_DOT_12)
    L2_2 = _util
    L2_2 = L2_2.AddPlayerOption
    L2_2(_text.C2_CR_A_7A, _const.CHANGE_DIALOG, -1, 50)
    L2_2 = _util
    L2_2 = L2_2.AddPlayerOption
    L2_2(_text.C2_CR_A_7B, _const.CHANGE_DIALOG, -1, 13)
  elseif L0_0 == 13 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_DOT_13, _const.CHANGE_NPC, _id.C2_CR_Director, 9)
  elseif L0_0 == 14 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_DOT_14, _const.END_DIALOG, -1, 70)
    L2_2 = _util
    L2_2 = L2_2.SetConversationCount
    L2_2(70, _id.C2_CR_Rookie)
    L2_2 = _util
    L2_2 = L2_2.SetConversationCount
    L2_2(70, _id.C2_CR_JPG)
    L2_2 = _util
    L2_2 = L2_2.SetConversationCount
    L2_2(70, _id.C2_CR_Gary)
    L2_2 = _util
    L2_2 = L2_2.DelItem
    L2_2(_id.C2_CR_Director)
    L2_2 = _util
    L2_2 = L2_2.AddItem
    L2_2(_id.M1_CRScreen_EPFLogo)
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("EPFLogoShow", 1)
    L2_2 = _util
    L2_2 = L2_2.SetSpawn
    L2_2(0, _id.C2_CR_Director)
    L2_2 = _util
    L2_2 = L2_2.SetSpawn
    L2_2(0, _id.C2_CR_Rookie)
    L2_2 = _util
    L2_2 = L2_2.SetSpawn
    L2_2(0, _id.C2_CR_JPG)
    L2_2 = _util
    L2_2 = L2_2.SetExitLocked
    L2_2(_id.CommandRoomToLobby, false)
    L2_2 = _util
    L2_2 = L2_2.ShowMap
    L2_2()
    function L2_2()
      print("Tock")
      repeat
        scriptWait()
      until 0 + 1 > 320
      _util.ClearCom()
      _util.SetupComNpc(_const.COM_ROOKIE, _id.C2_CR_Rookie, 5)
      _util.SetupComNpc(_const.COM_JPG, _id.C2_CR_JPG, 0)
    end
    scriptPlay(L2_2)
  elseif L0_0 == 50 then
    L2_2 = _util
    L2_2 = L2_2.ActivateNpc
    L2_2(_id.C2_CR_Director, 9)
  elseif L0_0 == 51 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_DOT_15)
    L2_2 = L1_1
    L2_2()
  elseif L0_0 == 52 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_DOT_16)
    L2_2 = L1_1
    L2_2()
  elseif L0_0 == 53 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_DOT_11, _const.CHANGE_NPC, _id.C2_CR_Gary, 8)
  elseif L0_0 == 54 then
    function L2_2()
      _util.StartMiniGame(_const.MIRROR, 1)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.ActivateNpc(_id.C2_CR_Dot, 53)
      else
      end
    end
    scriptPlay(L2_2)
  elseif L0_0 == 60 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_IDLE_CAM_DOT, _const.END_DIALOG, -1, 60)
  elseif L0_0 == 70 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_CR_IDLE_END_DOT, _const.END_DIALOG, -1, 70)
  elseif L0_0 == 100 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C2_END_DOT_1, _const.CHANGE_NPC, _id.C2_CR_Rookie, 100)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.ITEM_DROPPED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.C2_Camera
  if L1_1 == L2_2 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "C2_Event"
    L1_1 = L1_1(L2_2)
    L2_2 = _id
    L2_2 = L2_2.C2_Briefed
    if L1_1 < L2_2 then
      L1_1 = _util
      L1_1 = L1_1.AddNPCText
      L2_2 = _text
      L2_2 = L2_2.C2_CR_IDLE_PHOTO_DOT
      L1_1(L2_2, _const.END_DIALOG, -1, _util.GetConversationCount())
    end
  end
end
