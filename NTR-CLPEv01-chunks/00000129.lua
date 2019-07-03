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
        L1_1(3429, _const.END_DIALOG, 0)
      end
    end
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPMission_Started")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3432, _const.CHANGE_NPC, _id.FP03_NPC2_Forest, 1)
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3434, 3435, -1, _const.CHANGE_NPC, _id.FP03_NPC2_Forest, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3437, 3438, -1, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(3439)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3440, -1, _const.CHANGE_DIALOG, 4)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3441, -1, _const.CHANGE_DIALOG, 33)
  elseif L0_0 == 33 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4436, _const.END_DIALOG, 0)
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
      _util.SetObjective(20)
      _util.EnableSpyPodFunc(_const.FLAG_SNOWCAT)
      _util.ActivateNpc(_id.FP03_NPC1_Forest, 5)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3442, 3443, -1, _const.CHANGE_DIALOG, 6)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3444, _const.CHANGE_NPC, _id.FP03_NPC2_Forest, 3)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3449, _const.END_DIALOG, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(3452)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3453, 3455, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3454, -1, _const.CHANGE_DIALOG, 88)
  elseif L0_0 == 88 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4437, _const.END_DIALOG, 8)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3460, 3461, -1, _const.CHANGE_NPC, _id.FP03_NPC2_Forest, 6)
  elseif L0_0 == 10 then
    function L1_1()
      _util.DisplayPopUp(493, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddDialog(3464, _const.CHANGE_NPC, _id.FP03_TourGuide_Forest, 0)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3473, 3474, -1, _const.CHANGE_DIALOG, 12)
  elseif L0_0 == 12 then
    function L1_1()
      _util.SetVar("FPM03_missionComplete", 1)
      _util.SetConversationCount(13)
      _util.SetVar("FPMission_Started", 0)
      _util.RemoveMapAlert(_const.FREEPLAY7START)
      _util.AddCoins(50)
      _util.DisplayPopUp(494, "UI/coin", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.SetObjective(492)
      _util.MarkFreePlayMission(_const.FPM03)
      _util.StartCutscene(_const.FPM03OUTRO)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 13 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3476, _const.END_DIALOG, 13)
  end
end
