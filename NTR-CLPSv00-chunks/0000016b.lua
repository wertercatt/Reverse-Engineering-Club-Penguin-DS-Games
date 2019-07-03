local L0_0, L1_1, L2_2, L3_3, L4_4
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
  L1_1 = L1_1.IsSuitcaseItemEquipped
  L2_2 = _id
  L2_2 = L2_2.SuitCase_GaryGlasses
  L1_1 = L1_1(L2_2)
  function L2_2()
    _util.SwitchState("scan")
    repeat
      scriptWait()
    until not _util.IsAnimPlaying()
    _util.SwitchState("")
  end
  function L3_3()
    _util.SwitchState("approve")
    repeat
      scriptWait()
    until not _util.IsAnimPlaying()
    _util.SwitchState("")
    _util.SwitchState("approve")
    repeat
      scriptWait()
    until not _util.IsAnimPlaying()
    _util.SwitchState("")
  end
  function L4_4()
    _util.SwitchState("reject")
    repeat
      scriptWait()
    until not _util.IsAnimPlaying()
    _util.SwitchState("")
    _util.SwitchState("reject")
    repeat
      scriptWait()
    until not _util.IsAnimPlaying()
    _util.SwitchState("")
  end
  if not L1_1 then
    if L0_0 == 0 then
      _util.AddDialog(785, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      _util.AddDialog(786, _const.CHANGE_DIALOG, 2)
      scriptPlay(L2_2)
    elseif L0_0 == 2 then
      _util.AddDialog(787, _const.CHANGE_DIALOG, 3)
      scriptPlay(L4_4)
    elseif L0_0 == 3 then
      _util.AddDialog(788, _const.CHANGE_DIALOG, 4)
      scriptPlay(L4_4)
    elseif L0_0 == 4 then
      _util.AddDialog(789, _const.END_DIALOG, 0)
    end
  elseif L1_1 and _util.GetExitLocked(_id.Doors_HQ2Gadget) then
    if L0_0 == 0 then
      _util.AddDialog(785, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      _util.AddDialog(786, _const.CHANGE_DIALOG, 2)
      scriptPlay(L2_2)
    elseif L0_0 == 2 then
      _util.AddDialog(790, _const.CHANGE_DIALOG, 3)
      scriptPlay(L4_4)
    elseif L0_0 == 3 then
      _util.AddDialog(791, _const.CHANGE_DIALOG, 4)
      scriptPlay(L3_3)
    elseif L0_0 == 4 then
      _util.AddDialog(792, _const.CHANGE_DIALOG, 5)
    elseif L0_0 == 5 then
      _util.AddDialog(793, _const.CHANGE_DIALOG, 6)
    elseif L0_0 == 6 then
      _util.AddMonologue(794)
      _util.SetConversationCount(0)
      _util.SetVar("M2C1_glassesScanned", 1)
      _util.SetVar("M2C1_searchedHQ", 1)
      _util.SetExitLocked(_id.Doors_HQ2Gadget, false)
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COLLIDED
if L0_0 == L1_1 then
end
