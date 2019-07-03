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
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(695, 696, -1, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(697, 698, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(699, 700, -1, _const.CHANGE_NPC, _id.M1C3_JetPackGuy_CR, 1)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(702, _const.CHANGE_DIALOG, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(703, _const.CHANGE_NPC, _id.M1C3_Dot_CR, 1)
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(5)
    function L1_1()
      _util.DisableInput()
      _util.AddItem(_id.M1C3_GlassesUp)
      _util.PushCamera(_id.M1C3_GlassesUp)
      _util.PlaySFX(111)
      _util.SwitchState("open", _id.M1C3_GlassesUp)
      _util.SwitchState("opening", _id.Object_CommandTable)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M1C3_GlassesUp)
      _util.PopCamera(_id.M1C3_GlassesUp)
      _util.DelItem(_id.M1C3_GlassesUp)
      _util.AddItem(_id.M1C3_HighLevelBadge)
      _util.EnableInput()
    end
    scriptPlay(L1_1)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M1C3_haveBadge")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(705, _const.END_DIALOG, 5)
    end
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M1C3_haveBadge")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(708, _const.CHANGE_DIALOG, 6)
    end
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(709, _const.CHANGE_DIALOG, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddMapAlert
    L1_1(_const.STORY_MISSION, 210, 130, _const.M4C2MISSIONSTART, 102, 115)
    L1_1 = _util
    L1_1 = L1_1.IsCommandCoachActive
    L1_1 = L1_1()
    if L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(710, _const.CHANGE_DIALOG, 533)
    else
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(710, _const.END_MISSION)
    end
  elseif L0_0 == 533 then
    function L1_1()
      _util.DisplayPopUp(493, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      repeat
        scriptWait()
      until 0 + 1 == 40
      _util.ShowMap()
      _util.EndMission()
    end
    scriptPlay(L1_1)
  end
end
