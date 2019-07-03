local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.CREATED
if L2_2 == L3_3 then
  L2_2 = _util
  L2_2 = L2_2.AddInterest
  L3_3 = _const
  L3_3 = L3_3.TOUCHED
  L2_2(L3_3)
  L2_2 = _util
  L2_2 = L2_2.AddInterest
  L3_3 = _const
  L3_3 = L3_3.ITEM_DROPPED
  L2_2(L3_3)
end
if L0_0 == 1 and L1_1 == 2 then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  L3_3 = _const
  L3_3 = L3_3.TOUCHED
  if L2_2 == L3_3 then
    L2_2 = _util
    L2_2 = L2_2.GetConversationCount
    L2_2 = L2_2()
    if L2_2 == 0 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("M1C2_havePin")
      if L3_3 == 1 then
        L3_3 = _util
        L3_3 = L3_3.AddMonologue
        L3_3(231, "DialogStrings", _const.CHANGE_DIALOG, 1)
      end
    elseif L2_2 == 1 then
      L3_3 = _util
      L3_3 = L3_3.AddMonologue
      L3_3(232, "DialogStrings", _const.CHANGE_DIALOG, 2)
    elseif L2_2 == 2 then
      L3_3 = _util
      L3_3 = L3_3.DisplayPopUp
      L3_3(287, "UI/Zoom/DojoDoor2Puffle", false)
      L3_3 = _util
      L3_3 = L3_3.SetConversationCount
      L3_3(0)
    elseif L2_2 == 3 then
      function L3_3()
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        if _util.GetMinigameOutput1() == 1 then
          _util.PlaySFX(170)
          _util.ActivateNpc(_id.Doors_Dojo2Puffle, 4)
        end
      end
      _util.StartMiniGame(_const.JIGSAW, 1)
      scriptPlay(L3_3)
    elseif L2_2 == 4 then
      L3_3 = _util
      L3_3 = L3_3.AddMonologue
      L3_3(238, "DialogStrings", _const.CHANGE_DIALOG, 5)
    elseif L2_2 == 5 then
      L3_3 = _util
      L3_3 = L3_3.DisableInput
      L3_3()
      L3_3 = _util
      L3_3 = L3_3.ActivateNpc
      L3_3(_id.M1C2_Dot_Dojo, 19)
    end
  end
end
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.ITEM_DROPPED
if L2_2 == L3_3 then
  L2_2 = _util
  L2_2 = L2_2.GetSource
  L2_2 = L2_2()
  L3_3 = _id
  L3_3 = L3_3.M1C2_TraineePin
  if L2_2 == L3_3 then
    L3_3 = _util
    L3_3 = L3_3.ActivateNpc
    L3_3(_util.GetSelf(), 3)
  end
end
