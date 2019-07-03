local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COMMUNICATOR
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.AFTER_DIALOG
  L0_0(L1_1)
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
L3_3 = mapCheck
L4_4 = L0_0
L3_3(L4_4, L1_1)
function L3_3()
  if _util.GetVar("M11_guessedFlowers") ~= 1 then
    _util.AddPlayerOption(_text.M11_HQ_GARY_A_7A, _const.CHANGE_DIALOG, -1, 9)
  end
  if _util.GetVar("M11_guessedBeans") ~= 1 then
    _util.AddPlayerOption(_text.M11_HQ_GARY_A_7C, _const.CHANGE_DIALOG, -1, 11)
  end
  _util.AddPlayerOption(_text.M11_HQ_GARY_A_7D, _const.CHANGE_DIALOG, -1, 12)
  if (_util.GetVar("M11_guessedFlowers") == 1 or _util.GetVar("M11_guessedBeans") == 1) and _util.GetVar("M11_guessedJals") ~= 1 then
    _util.AddPlayerOption(_text.M11_HQ_GARY_A_7B, _const.CHANGE_DIALOG, -1, 10)
  end
end
L4_4 = _util
L4_4 = L4_4.GetReason
L4_4 = L4_4()
if L4_4 == _const.TOUCHED then
  if L2_2 == 0 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY1_GREET)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_1A, _const.CHANGE_DIALOG, -1, 1)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_1B, _const.CHANGE_DIALOG, -1, 2)
  elseif L2_2 == 1 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_2A)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_2A, _const.CHANGE_DIALOG, -1, 5)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_2B, _const.CHANGE_DIALOG, -1, 3)
  elseif L2_2 == 2 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_2B)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_2A, _const.CHANGE_DIALOG, -1, 5)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_2B, _const.CHANGE_DIALOG, -1, 3)
  elseif L2_2 == 3 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_3, _const.END_DIALOG, -1, 4)
  elseif L2_2 == 4 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_4)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_2A, _const.CHANGE_DIALOG, -1, 5)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_2B, _const.CHANGE_DIALOG, -1, 3)
  elseif L2_2 == 5 then
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Gary/GaryHQ2", _util.GetSelf(), "talk")
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_5)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_5A, _const.CHANGE_DIALOG, -1, 6)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_5B, _const.CHANGE_DIALOG, -1, 7)
  elseif L2_2 == 6 then
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Gary/GaryHQ", _util.GetSelf(), "talk")
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_6A)
    L4_4 = L3_3
    L4_4()
  elseif L2_2 == 7 then
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Gary/GaryHQ", _util.GetSelf(), "talk")
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_6B)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_6B, _const.CHANGE_DIALOG, -1, 8)
  elseif L2_2 == 8 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_7)
    L4_4 = L3_3
    L4_4()
  elseif L2_2 == 9 then
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("M11_guessedFlowers", 1)
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_8A)
    L4_4 = L3_3
    L4_4()
  elseif L2_2 == 10 then
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("M11_guessedJals", 1)
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_8B)
    L4_4 = L3_3
    L4_4()
  elseif L2_2 == 11 then
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("M11_guessedBeans", 1)
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_8C)
    L4_4 = L3_3
    L4_4()
  elseif L2_2 == 12 then
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Gary/GaryHQ2", _util.GetSelf(), "talk")
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_8D)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_9A, _const.CHANGE_DIALOG, -1, 13)
  elseif L2_2 == 13 then
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Gary/GaryHQ", _util.GetSelf(), "talk")
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_10A)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_10A, _const.CHANGE_DIALOG, -1, 15)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_10B, _const.CHANGE_DIALOG, -1, 16)
  elseif L2_2 == 14 then
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Gary/GaryHQ", _util.GetSelf(), "talk")
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_10B)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_10A, _const.CHANGE_DIALOG, -1, 15)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_10B, _const.CHANGE_DIALOG, -1, 16)
  elseif L2_2 == 15 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_11A)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_11A, _const.CHANGE_DIALOG, -1, 19)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_11B, _const.CHANGE_DIALOG, -1, 18)
  elseif L2_2 == 16 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_11B)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_11A, _const.CHANGE_DIALOG, -1, 19)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_11B, _const.CHANGE_DIALOG, -1, 18)
  elseif L2_2 == 17 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_PH_HQ_GARYC_A1, _const.CHANGE_DIALOG, -1, 19)
  elseif L2_2 == 18 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_12, _const.CHANGE_DIALOG, -1, 19)
  elseif L2_2 == 19 then
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("M11_watchedGSVid", 1)
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Gary/GaryHQ3", _util.GetSelf(), "talk")
    L4_4 = _util
    L4_4 = L4_4.SetSpawn
    L4_4(1, _id.M9_StaticScreen)
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_12A, _const.END_DIALOG, -1, 19)
  elseif L2_2 == 20 then
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Gary/GaryHQ", _util.GetSelf(), "talk")
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_13)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_13A, _const.CHANGE_DIALOG, -1, 21)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ_GARY_A_13B, _const.CHANGE_DIALOG, -1, 21)
  elseif L2_2 == 21 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ_GARY_14, _const.END_DIALOG, -1, 21)
    L4_4 = _util
    L4_4 = L4_4.AddObjective
    L4_4(_text.M11_OBJ1)
    L4_4 = _util
    L4_4 = L4_4.AddSubObjective
    L4_4(_text.M11_OBJ1, _text.M11_1SUBOBJ1)
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("GoTalkToRookie", 1)
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("GoTalkToJPG", 1)
  elseif L2_2 == 22 then
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Gary/GaryHQ2", _util.GetSelf(), "talk")
    L4_4 = _util
    L4_4 = L4_4.MarkObjComplete
    L4_4(_text.M11_OBJ2)
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ2_GARY_1)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ2_GARY_A_1, _const.CHANGE_DIALOG, -1, 23)
  elseif L2_2 == 23 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ2_GARY_2, _const.CHANGE_DIALOG, -1, 24)
  elseif L2_2 == 24 then
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Gary/GaryHScreen", _util.GetSelf())
    function L4_4()
      _util.DisableInput()
      _util.AddItem(_id.M11_HQHerbertScreen)
      _util.AddItem(_id.M11_HQHerbertScreenLeft)
      _util.AddItem(_id.M11_HQHerbertScreenRight)
      _util.PushCamera(_id.M11_HQHerbertScreen)
      _util.PlaySFX(218)
      _util.SwitchState("staticBegin", _id.M11_HQHerbertScreen)
      _util.SwitchState("staticBegin", _id.M11_HQHerbertScreenLeft)
      _util.SwitchState("staticBegin", _id.M11_HQHerbertScreenRight)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M11_HQHerbertScreen)
      _util.SwitchState("fadeIn", _id.M11_HQHerbertScreen)
      _util.SwitchState("fadeIn", _id.M11_HQHerbertScreenLeft)
      _util.SwitchState("fadeIn", _id.M11_HQHerbertScreenRight)
      _util.PlayHerbertLurking()
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M11_HQHerbertScreen)
      _util.PopCamera(_id.M11_HQHerbertScreen)
      _util.EnableInput()
      _util.ActivateNpc(_id.M11_HQGaryScreen, 25)
    end
    scriptPlay(L4_4)
  elseif L2_2 == 25 then
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Gary/GaryHScreen2", _util.GetSelf(), "talk")
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ2_GARY_3)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ2_GARY_A_3, _const.CHANGE_DIALOG, -1, 26)
  elseif L2_2 == 26 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ2_GARY_4, _const.CHANGE_DIALOG, -1, 27)
  elseif L2_2 == 27 then
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Gary/GaryHScreen")
    function L4_4()
      local L0_5, L1_6, L2_7, L3_8, L4_9, L5_10
      L0_5 = _util
      L0_5 = L0_5.DisableInput
      L0_5()
      L0_5 = _util
      L0_5 = L0_5.AddItem
      L1_6 = _id
      L1_6 = L1_6.M11_HQ_Rookie
      L0_5(L1_6)
      L0_5 = _util
      L0_5 = L0_5.AddItem
      L1_6 = _id
      L1_6 = L1_6.M11_HQ_JPG
      L0_5(L1_6)
      L0_5 = _util
      L0_5 = L0_5.DelItem
      L1_6 = _id
      L1_6 = L1_6.M11_GS_NPC_Rookie
      L0_5(L1_6)
      L0_5 = _util
      L0_5 = L0_5.DelItem
      L1_6 = _id
      L1_6 = L1_6.M11_GS_NPC_JPG
      L0_5(L1_6)
      L0_5 = _util
      L0_5 = L0_5.SetSpawn
      L1_6 = 0
      L2_7 = _id
      L2_7 = L2_7.M11_GS_NPC_JPG
      L0_5(L1_6, L2_7)
      L0_5 = _util
      L0_5 = L0_5.SetSpawn
      L1_6 = 0
      L2_7 = _id
      L2_7 = L2_7.M11_GS_NPC_Rookie
      L0_5(L1_6, L2_7)
      L0_5 = _util
      L0_5 = L0_5.SetX
      L1_6 = 1215
      L2_7 = _id
      L2_7 = L2_7.M11_HQ_JPG
      L0_5(L1_6, L2_7)
      L0_5 = _util
      L0_5 = L0_5.SwitchState
      L1_6 = "walk"
      L2_7 = _id
      L2_7 = L2_7.M11_HQ_Rookie
      L0_5(L1_6, L2_7)
      L0_5 = _util
      L0_5 = L0_5.SwitchState
      L1_6 = "walk"
      L2_7 = _id
      L2_7 = L2_7.M11_HQ_JPG
      L0_5(L1_6, L2_7)
      L0_5 = _util
      L0_5 = L0_5.SetCursorPos
      L1_6 = _util
      L1_6 = L1_6.GetX
      L2_7 = _id
      L2_7 = L2_7.M11_HQ_Rookie
      L1_6 = L1_6(L2_7)
      L2_7 = _util
      L2_7 = L2_7.GetY
      L3_8 = _id
      L3_8 = L3_8.M11_HQ_Rookie
      L5_10 = L2_7(L3_8)
      L0_5(L1_6, L2_7, L3_8, L4_9, L5_10, L2_7(L3_8))
      L0_5 = _util
      L0_5 = L0_5.PushCamera
      L1_6 = _id
      L1_6 = L1_6.M11_HQ_Rookie
      L0_5(L1_6)
      L0_5 = 974
      L1_6 = 176
      L2_7 = 120
      L3_8 = 1040
      L4_9 = 184
      L5_10 = 120
      _util.MoveObject(_id.M11_HQ_Rookie, L0_5, L1_6, L2_7, 1)
      _util.MoveObject(_id.M11_HQ_JPG, L3_8, L4_9, L5_10, 1)
      repeat
        scriptWait()
        if _util.GetX(_id.M11_HQ_Rookie) == L0_5 then
          _util.SwitchState("", _id.M11_HQ_Rookie)
        end
        if _util.GetX(_id.M11_HQ_JPG) == L3_8 then
          _util.SwitchState("", _id.M11_HQ_JPG)
        end
      until _util.GetX(_id.M11_HQ_Rookie) == L0_5 and _util.GetX(_id.M11_HQ_JPG) == L3_8
      _util.SwitchState("", _id.M11_HQ_Rookie)
      _util.SwitchState("", _id.M11_HQ_JPG)
      _util.PopCamera(_util.GetSelf())
      _util.SetVar("FixMachine", 1)
      _util.ActivateNpc(_id.M11_HQHerbertScreen, 0)
      _util.EnableInput()
    end
    scriptPlay(L4_4)
  elseif L2_2 == 28 then
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Gary/GaryHQ3", _util.GetSelf(), "talk")
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ2_GARY_7, _const.CHANGE_NPC, _id.M11_HQ_Rookie, 2)
  elseif L2_2 == 29 then
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Gary/GaryHQ4", _util.GetSelf(), "talk")
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/JetPackGuy/jpgHQGary", _id.M11_HQ_JPG)
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Rookie/RookieGary", _id.M11_HQ_Rookie)
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ2_GARY_18)
    L4_4 = _util
    L4_4 = L4_4.AddPlayerOption
    L4_4(_text.M11_HQ2_A_18, _const.CHANGE_DIALOG, -1, 30)
  elseif L2_2 == 30 then
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/JetPackGuy/jpgHQ", _id.M11_HQ_JPG)
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Rookie/RookieHQ", _id.M11_HQ_Rookie)
    L4_4 = _util
    L4_4 = L4_4.AddObjective
    L4_4(_text.M11_OBJ3)
    L4_4 = _util
    L4_4 = L4_4.SetConversationCount
    L4_4(300)
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ2_GARY_19, _const.CHANGE_NPC, _id.M11_HQ_Rookie, 7)
  elseif L2_2 == 300 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ2_GARY_19, _const.END_DIALOG, -1, 300)
  elseif L2_2 == 31 then
    L4_4 = _util
    L4_4 = L4_4.SetExitLocked
    L4_4(_id.Doors_HQ2SportUL, true)
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Gary/GaryHQ3", _util.GetSelf(), "talk")
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ3_GARY_1, _const.CHANGE_DIALOG, -1, 32)
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("LockedIn", 1)
  elseif L2_2 == 32 then
    function L4_4()
      _util.DisableInput()
      _util.ChangeBaseAnim("MissionObjects/M11/cloth", _id.M11_Cloth)
      _util.ChangeBaseAnim("NPC/M11/Gary/Gary", _util.GetSelf(), "pullCover")
      _util.SwitchState("pull", _id.M11_Cloth)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M11_Cloth) and not _util.IsAnimPlaying(_util.GetSelf())
      _util.SetX(1103, _id.M11_Cloth)
      _util.SetY(166, _id.M11_Cloth)
      _util.SwitchState("ground", _id.M11_Cloth)
      _util.EnableInput()
      _util.ChangeBaseAnim("NPC/M11/Gary/GaryHQ5", _util.GetSelf(), "talk")
      _util.AddNPCText(_text.M11_HQ3_GARY_2, _const.CHANGE_NPC, _id.M11_HQRookieEscape, 8)
    end
    scriptPlay(L4_4)
    _util.SetVar("RemoveSheetOnExit", 1)
  elseif L2_2 == 33 then
    L4_4 = _util
    L4_4 = L4_4.MarkObjComplete
    L4_4(_text.M11_OBJ6)
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("SearchForExit", 1)
    L4_4 = _util
    L4_4 = L4_4.AddObjective
    L4_4(_text.M11_OBJ7)
    L4_4 = _util
    L4_4 = L4_4.AddSubObjective
    L4_4(_text.M11_OBJ7, _text.M11_7SUBOBJ1)
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ3_GARY_4, _const.END_DIALOG, -1, 33)
  elseif L2_2 == 35 then
    L4_4 = _util
    L4_4 = L4_4.AddNPCText
    L4_4(_text.M11_HQ3_GARY_5, _const.CHANGE_NPC, _id.M11_HQDotEscape, 2)
  end
end
L4_4 = _util
L4_4 = L4_4.GetReason
L4_4 = L4_4()
if L4_4 == _const.COMMUNICATOR then
  L4_4 = _util
  L4_4 = L4_4.GetComCount
  L4_4 = L4_4()
  if L4_4 == 0 then
    _util.AddNPCTextComm(_text.M11_COM_GARY_1)
    _util.AddPlayerOptionComm(_text.M11_COM_GARY_A_1, _const.END_DIALOG, -1, 0)
    _util.SetVar("M11_endComm", 1)
    _util.ClearCom()
  end
end
L4_4 = _util
L4_4 = L4_4.GetReason
L4_4 = L4_4()
if L4_4 == _const.AFTER_DIALOG then
  L4_4 = _util
  L4_4 = L4_4.GetVar
  L4_4 = L4_4("M11_endComm")
  if L4_4 == 1 then
    L4_4 = _util
    L4_4 = L4_4.ClearCom
    L4_4()
    L4_4 = _util
    L4_4 = L4_4.MarkObjComplete
    L4_4(_text.M11_OBJ1)
    L4_4 = _util
    L4_4 = L4_4.AddObjective
    L4_4(_text.M11_OBJ2)
    L4_4 = _util
    L4_4 = L4_4.SwitchState
    L4_4("", _util.GetSelf())
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("M11_endComm", 0)
  else
    L4_4 = _util
    L4_4 = L4_4.ChangeBaseAnim
    L4_4("NPC/M11/Gary/GaryHQ", _util.GetSelf(), "talk")
  end
end
