local L0_0, L1_1
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
  L1_1 = L1_1("M3C1_introComplete")
  if L1_1 == 0 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(1548, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(1549, _const.CHANGE_NPC, _id.M3C1_Dot_CR, 20)
    elseif L0_0 == 21 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(1551, 1552, -1, _const.CHANGE_DIALOG, 22)
    elseif L0_0 == 22 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(1553, _const.CHANGE_NPC, _id.M3C1_Dot_CR, 40)
    elseif L0_0 == 41 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(1555, _const.CHANGE_DIALOG, 42)
    elseif L0_0 == 42 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(1556, 1557, -1, _const.CHANGE_DIALOG, 43)
    elseif L0_0 == 43 then
      L1_1 = _util
      L1_1 = L1_1.AddMapAlert
      L1_1(_const.STORY_MISSION, 84, 221, _const.M3C2MISSIONSTART, 62, 125)
      L1_1 = _util
      L1_1 = L1_1.IsCommandCoachActive
      L1_1 = L1_1()
      if L1_1 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(1558, _const.CHANGE_DIALOG, 533)
      else
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L1_1("M3C1_introComplete", 1)
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(1558, _const.END_MISSION)
      end
    elseif L0_0 == 533 then
      function L1_1()
        _util.DisplayPopUp(488, "UI/Smilie", false)
        repeat
          scriptWait()
        until _util.IsPopUpVisible() == false
        _util.AddSmileys(100, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
        repeat
          scriptWait()
        until 0 + 1 == 40
        _util.SetVar("M3C1_introComplete", 1)
        _util.ShowMap()
        _util.EndMission()
      end
      scriptPlay(L1_1)
    end
  end
end
