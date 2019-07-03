local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
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
L2_2 = communicatorCheck
L3_3 = L0_0
L2_2(L3_3, L1_1)
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.TOUCHED then
  L3_3 = _util
  L3_3 = L3_3.PlayHerbertLurking
  L3_3()
  if L2_2 == 150 then
    L3_3 = _util
    L3_3 = L3_3.ClearCom
    L3_3()
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("M10_ComNClub", 1)
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_HERBERT_GREET, _const.END_DIALOG, 150)
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("M10_allAgentsMoveIn", 1)
    L3_3 = _util
    L3_3 = L3_3.MarkSubObjComplete
    L3_3(_text.M10_OBJ7, _text.M10_7SUBOBJ1)
    L3_3 = _util
    L3_3 = L3_3.AddSubObjective
    L3_3(_text.M10_OBJ7, _text.M10_7SUBOBJ2)
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_HERBERTA_A_2B, _const.END_DIALOG, 1)
  elseif L2_2 == 2 then
    function L3_3()
      _util.DisableInput()
      _util.ChangeBaseAnim("NPC/WaddleSquad/Herbert/NCAlone", _id.M10_NightClubHerbert)
      _util.SetCursorPos(_util.GetX(_id.M10_NightClubHerbert), _util.GetY(_id.M10_NightClubHerbert))
      repeat
        scriptWait()
      until 40 <= 0 + 1
      _util.SetNextRoom(91)
      _util.StartCutscene(_const.NCWALLBREAK)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.EnableInput()
      _util.ActivateNpc(_id.M10_NightClubHerbertMagnet, 101)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 101 then
    L3_3 = _util
    L3_3 = L3_3.SetConversationCount
    L3_3(102)
    L3_3 = _util
    L3_3 = L3_3.ClearCom
    L3_3()
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_HERBERTA_B, _const.CHANGE_NPC, _id.M10_NightClubRookie, 0)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_HERBERTC, _const.CHANGE_NPC, _id.M10_RookieNCFront, 2)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M10_NIGHTCLUB_HERBERTD)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_NIGHTCLUB_PLAYERD_Q1, -1, _const.CHANGE_DIALOG, 5)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_NIGHTCLUB_PLAYERD_Q2, -1, _const.CHANGE_DIALOG, 6)
  elseif L2_2 == 5 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_HERBERTF_A1, _const.CHANGE_DIALOG, 111)
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("HereComesGary", 1)
  elseif L2_2 == 6 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_HERBERTF_A2, _const.CHANGE_DIALOG, 111)
  elseif L2_2 == 111 then
    function L3_3()
      local L0_4, L1_5, L2_6
      L0_4 = _util
      L0_4 = L0_4.DisableInput
      L0_4()
      L0_4 = _util
      L0_4 = L0_4.AddItem
      L1_5 = _id
      L1_5 = L1_5.M10_NightClubGary
      L0_4(L1_5)
      L0_4 = _util
      L0_4 = L0_4.ChangeBaseAnim
      L1_5 = "NPC/WaddleSquad/Gary/gNCWalk"
      L2_6 = _id
      L2_6 = L2_6.M10_NightClubGary
      L0_4(L1_5, L2_6, "chart")
      L0_4 = _util
      L0_4 = L0_4.PushCamera
      L1_5 = _id
      L1_5 = L1_5.M10_NightClubGary
      L0_4(L1_5)
      L0_4 = 968
      L1_5 = 174
      L2_6 = 100
      _util.MoveObject(_id.M10_NightClubGary, L0_4, L1_5, L2_6, 1)
      repeat
        scriptWait()
      until _util.GetX(_id.M10_NightClubGary) == L0_4
      _util.SwitchState("", _util.GetSelf())
      repeat
        scriptWait()
      until 0 + 1 >= 30
      _util.PopCamera(_id.M10_NightClubGary)
      _util.ActivateNpc(_id.M10_NightClubGary, 0)
      _util.EnableInput()
    end
    scriptPlay(L3_3)
  elseif L2_2 == 7 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_HERBERTG, _const.CHANGE_NPC, _id.M10_NightClubGary, 1)
  elseif L2_2 == 8 then
    L3_3 = _util
    L3_3 = L3_3.AddLoopingConv
    L3_3(_text.M10_NIGHTCLUB_HERBERTH)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_NIGHTCLUB_PLAYERH_Q1, -1, _const.CHANGE_NPC, _id.M10_NightClubGary, 2)
    L3_3 = _util
    L3_3 = L3_3.AddLoopingOption
    L3_3(_text.M10_NIGHTCLUB_PLAYERH_Q2, -1, _const.CHANGE_NPC, _id.M10_NightClubGary, 3)
  elseif L2_2 == 9 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_HERBERTH2, _const.CHANGE_NPC, _id.M10_NightClubGary, 8)
  elseif L2_2 == 10 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_HERBERTI, _const.CHANGE_NPC, _id.M10_NightClubGary, 9)
  elseif L2_2 == 11 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_HERBERTJ, _const.CHANGE_NPC, _id.M10_RookieNCFront, 3)
  elseif L2_2 == 12 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M10_NIGHTCLUB_HERBERTK, _const.CHANGE_DIALOG, 13)
  elseif L2_2 == 13 then
    function L3_3()
      _util.DisableInput()
      _util.ChangeBaseAnim("NPC/WaddleSquad/Gary/gNCSad", _id.M10_NightClubGary)
      _util.ChangeBaseAnim("NPC/WaddleSquad/Herbert/NCPhone", _id.M10_NightClubHerbertCaged, "leave")
      _util.PlaySFX(242)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M10_NightClubHerbertCaged)
      _util.DelItem(_util.GetSelf())
      _util.AddItem(_id.M10_CageBars)
      _util.AddItem(_id.M10_BagDrop)
      _util.ChangeBaseAnim("NPC/WaddleSquad/Rookie/rNCSad", _id.M10_RookieNCFront)
      _util.ActivateNpc(_id.M10_NightClubGary, 11)
      _util.RestoreSongFromHerbert()
      _util.EnableInput()
    end
    scriptPlay(L3_3)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.AFTER_DIALOG then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L3_3 = L3_3("M10_allAgentsMoveIn")
  if L3_3 == 1 then
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("M10_allAgentsMoveIn", 0)
    L3_3 = _util
    L3_3 = L3_3.SetupComNpc
    L3_3(_const.COM_GARY, _id.M10_HQGary, 0)
    L3_3 = _util
    L3_3 = L3_3.LaunchCommunicator
    L3_3()
  end
end
