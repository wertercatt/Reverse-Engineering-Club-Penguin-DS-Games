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
  L3_3 = L3_3.ITEM_DROPPED
  L2_2(L3_3)
end
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.TOUCHED
if L2_2 == L3_3 then
  L2_2 = _util
  L2_2 = L2_2.GetConversationCount
  L2_2 = L2_2()
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L3_3 = L3_3("FPMission_Started")
  if L3_3 ~= 0 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("FPMission_Started")
    if L3_3 ~= 1 then
      if L2_2 == 0 then
        L3_3 = _util
        L3_3 = L3_3.AddDialog
        L3_3(3344, _const.CHANGE_DIALOG, 1)
      elseif L2_2 == 1 then
        L3_3 = _util
        L3_3 = L3_3.AddDialog
        L3_3(3344, _const.END_DIALOG, 0)
      end
    end
  else
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("FP01_introRory")
    if L3_3 == 0 and L2_2 < 100 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("FPMission_Started")
      if L3_3 == 0 then
        if L2_2 == 0 then
          L3_3 = _util
          L3_3 = L3_3.AddConversation
          L3_3(3345, 3346, -1, _const.CHANGE_DIALOG, 1)
        elseif L2_2 == 1 then
          L3_3 = _util
          L3_3 = L3_3.AddConversation
          L3_3(3347, 3348, -1, _const.CHANGE_DIALOG, 2)
        elseif L2_2 == 2 then
          L3_3 = _util
          L3_3 = L3_3.AddLoopingConv
          L3_3(3349)
          L3_3 = _util
          L3_3 = L3_3.AddLoopingOption
          L3_3(3350, -1, _const.CHANGE_DIALOG, 5)
          L3_3 = _util
          L3_3 = L3_3.AddLoopingOption
          L3_3(3351, -1, _const.CHANGE_DIALOG, 4)
        elseif L2_2 == 3 then
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("FP01_introBarista", 0)
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("FP01_haveWrench", 0)
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("FP01_introRory", 1)
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("FPMission_Started", 1)
          L3_3 = _util
          L3_3 = L3_3.SetSpawn
          L3_3(1, _id.FP01_Barista)
          L3_3 = _util
          L3_3 = L3_3.SetSpawn
          L3_3(1, _id.FP01_Couch)
          L3_3 = _util
          L3_3 = L3_3.SetSpawn
          L3_3(0, _id.FPM14_PizzaChef)
          L3_3 = _util
          L3_3 = L3_3.SetConversationCount
          L3_3(0)
          L3_3 = _util
          L3_3 = L3_3.SetObjective
          L3_3(14)
          L3_3 = _util
          L3_3 = L3_3.StartCutscene
          L3_3(_const.FPM01INTRO)
        elseif L2_2 == 4 then
          L3_3 = _util
          L3_3 = L3_3.AddDialog
          L3_3(4425, _const.END_DIALOG, 0)
        elseif L2_2 == 5 then
          L3_3 = _util
          L3_3 = L3_3.AddDialog
          L3_3(4426, _const.CHANGE_DIALOG, 3)
        end
      end
    else
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("FP01_introRory")
      if L3_3 == 1 and L2_2 < 100 then
        if L2_2 == 0 then
          L3_3 = _util
          L3_3 = L3_3.AddLoopingConv
          L3_3(3352)
          L3_3 = _util
          L3_3 = L3_3.AddLoopingOption
          L3_3(3353, 3356, _const.CHANGE_DIALOG, 1)
          L3_3 = _util
          L3_3 = L3_3.AddLoopingOption
          L3_3(3354, 3357, _const.UPDATE_LOOP)
          L3_3 = _util
          L3_3 = L3_3.AddLoopingOption
          L3_3(3355, -1, _const.CHANGE_DIALOG, 7)
        elseif L2_2 == 1 then
          L3_3 = _util
          L3_3 = L3_3.AddConversation
          L3_3(3356, 3358, -1, _const.CHANGE_DIALOG, 2)
        elseif L2_2 == 2 then
          L3_3 = _util
          L3_3 = L3_3.AddConversation
          L3_3(3359, 3360, -1, _const.CHANGE_DIALOG, 3)
        elseif L2_2 == 3 then
          L3_3 = _util
          L3_3 = L3_3.AddConversation
          L3_3(3361, 3362, -1, _const.CHANGE_DIALOG, 5)
        elseif L2_2 == 5 then
          L3_3 = _util
          L3_3 = L3_3.AddDialog
          L3_3(4427, _const.END_DIALOG, 4)
        elseif L2_2 == 4 then
          L3_3 = _util
          L3_3 = L3_3.AddConversation
          L3_3(3363, 3364, -1, _const.CHANGE_DIALOG, 6)
        elseif L2_2 == 6 then
          L3_3 = _util
          L3_3 = L3_3.AddDialog
          L3_3(4428, _const.END_DIALOG, 4)
        elseif L2_2 == 7 then
          L3_3 = _util
          L3_3 = L3_3.AddDialog
          L3_3(4426, _const.END_DIALOG, 0)
        elseif L2_2 == 51 then
          L3_3 = _util
          L3_3 = L3_3.AddConversation
          L3_3(3367, 3368, -1, _const.CHANGE_DIALOG, 52)
        elseif L2_2 == 52 then
          L3_3 = _util
          L3_3 = L3_3.AddConversation
          L3_3(3369, 3370, -1, _const.CHANGE_DIALOG, 53)
        elseif L2_2 == 53 then
          L3_3 = _util
          L3_3 = L3_3.AddConversation
          L3_3(3371, 3372, -1, _const.CHANGE_DIALOG, 54)
        elseif L2_2 == 54 then
          L3_3 = _util
          L3_3 = L3_3.AddDialog
          L3_3(3373, _const.CHANGE_DIALOG, 55)
        elseif L2_2 == 55 then
          function L3_3()
            _util.SetSpawn(0, _id.FP01_Barista)
            _util.SetSpawn(0, _id.FP01_Thermos)
            _util.SetSpawn(0, _util.GetSelf())
            _util.SetConversationCount(56)
            _util.SetVar("FPM01_missionComplete", 1)
            _util.SetVar("FPMission_Started", 0)
            _util.SetSpawn(1, _id.FPM14_PizzaChef)
            _util.RemoveMapAlert(_const.FREEPLAY1START)
            if _UPVALUE0_ == 0 and _UPVALUE1_ > 4 then
              _util.AddMapAlert(_const.FREEPLAY_MISSION, 423, 226, _const.FREEPLAY9START, 132, 104)
            end
            _util.SetSuitcaseItemEnabled(_id.SuitCase_SafetyVest, true)
            _util.DisplayPopUp(345, "UI/Zoom/SafetyVest")
            repeat
              scriptWait()
            until _util.IsPopUpVisible() == false
            _util.SetObjective(492)
            _util.MarkFreePlayMission(_const.FPM01)
            _util.StartCutscene(_const.FPM01OUTRO)
          end
          scriptPlay(L3_3)
        elseif L2_2 == 56 then
          L3_3 = _util
          L3_3 = L3_3.AddDialog
          L3_3(3393, _const.END_DIALOG, 56)
        end
      elseif L2_2 == 100 then
        L3_3 = _util
        L3_3 = L3_3.AddConversation
        L3_3(3375, 3376, -1, _const.CHANGE_DIALOG, 101)
      elseif L2_2 == 101 then
        L3_3 = _util
        L3_3 = L3_3.AddDialog
        L3_3(4429, _const.END_DIALOG, 0)
      end
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
  L3_3 = L3_3.FP01_Wrench
  if L2_2 == L3_3 then
    function L3_3()
      _util.DisplayPopUp(493, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddConversation(3365, 3366, -1, _const.CHANGE_DIALOG, 51)
      _util.RemoveInventoryItem(_id.FP01_Wrench)
    end
    scriptPlay(L3_3)
  end
end
