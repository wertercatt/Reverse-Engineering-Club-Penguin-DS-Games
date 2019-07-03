local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("FPMission_Started")
  if L1_1 ~= 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPMission_Started")
    if L1_1 ~= 3 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPM03_missionComplete")
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(3699, _const.END_DIALOG, 0)
      end
    end
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPMission_Started")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3702, _const.CHANGE_NPC, _id.FP03_NPC2_Forest, 1)
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3704, 3705, -1, _const.CHANGE_NPC, _id.FP03_NPC2_Forest, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3707, 3708, -1, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(3709)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3710, -1, _const.CHANGE_DIALOG, 4)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3711, -1, _const.CHANGE_DIALOG, 33)
  elseif L0_0 == 33 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4744, _const.END_DIALOG, 0)
  elseif L0_0 == 4 then
    function L1_1()
      _util.SetVar("FP03_introForest", 1)
      _util.SetVar("FPMission_Started", 3)
      _util.StartCutscene(_const.FPM03INTRO)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.SetObjective(71)
      _util.EnableSpyPodFunc(_const.FLAG_SNOWCAT)
      _util.ActivateNpc(_id.FP03_NPC1_Forest, 5)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3712, 3713, -1, _const.CHANGE_DIALOG, 6)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3714, _const.CHANGE_NPC, _id.FP03_NPC2_Forest, 3)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3719, _const.END_DIALOG, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(3722)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3723, 3725, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3724, -1, _const.CHANGE_DIALOG, 88)
  elseif L0_0 == 88 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4745, _const.END_DIALOG, 8)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3730, 3731, -1, _const.CHANGE_NPC, _id.FP03_NPC2_Forest, 6)
  elseif L0_0 == 10 then
    function L1_1()
      _util.DisplayPopUp(626, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddSmileys(20, _util.GetX(_util.GetSelf()), _util.GetX(_util.GetSelf()))
      _util.AddDialog(3734, _const.CHANGE_NPC, _id.FP03_TourGuide_Forest, 0)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3743, 3744, -1, _const.CHANGE_DIALOG, 12)
  elseif L0_0 == 12 then
    function L1_1()
      _util.SetVar("FPM03_missionComplete", 1)
      _util.SetConversationCount(13)
      _util.SetVar("FPMission_Started", 0)
      _util.RemoveMapAlert(_const.FREEPLAY7START)
      _util.AddCoins(50)
      _util.DisplayPopUp(627, "UI/coin", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.SetObjective(625)
      _util.MarkFreePlayMission(_const.FPM03)
      _util.StartCutscene(_const.FPM03OUTRO)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 13 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3746, _const.END_DIALOG, 13)
  end
end
