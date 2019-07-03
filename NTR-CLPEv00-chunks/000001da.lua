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
  if L0_0 == 20 then
    function L1_1()
      local L0_2, L1_3
      L0_2 = _util
      L0_2 = L0_2.GetSelf
      L0_2 = L0_2()
      L1_3 = 40
      _util.PushCamera()
      _util.MoveObject(L0_2, 542, _util.GetY(L0_2), L1_3)
      _util.SwitchState("Walk", L0_2)
      repeat
        scriptWait()
      until _util.GetX(L0_2) == 542
      _util.SwitchState("", _util.GetSelf())
      _util.PopCamera()
      _util.ActivateNpc(_util.GetSelf(), 21)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 21 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(444, 445, -1, _const.CHANGE_NPC, _id.M1C2_Director_CR, 22)
  elseif L0_0 == 30 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(453, 454, -1, _const.CHANGE_DIALOG, 31)
  elseif L0_0 == 31 then
    L1_1 = _util
    L1_1 = L1_1.AddMapAlert
    L1_1(_const.STORY_MISSION, 210, 130, _const.M1C3MISSIONSTART, 70, 70)
    L1_1 = _util
    L1_1 = L1_1.EnableSpyPodFunc
    L1_1(_const.FLAG_DECODER)
    L1_1 = _util
    L1_1 = L1_1.EnableSpyPodFunc
    L1_1(_const.FLAG_HEADQUARTERS)
    L1_1 = _util
    L1_1 = L1_1.IsCommandCoachActive
    L1_1 = L1_1()
    if L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(455, _const.CHANGE_DIALOG, 533)
    else
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(455, _const.END_MISSION)
    end
  elseif L0_0 == 533 then
    function L1_1()
      _util.DisplayPopUp(626, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddSmileys(100, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      repeat
        scriptWait()
      until 0 + 1 == 40
      _util.EndMission()
    end
    scriptPlay(L1_1)
  end
end
