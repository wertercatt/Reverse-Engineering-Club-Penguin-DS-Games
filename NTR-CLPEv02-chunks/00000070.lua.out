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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddMonologue
  L1_1 = 1758
  L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSelf
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  if _util.GetSource() == _id.Inventory_PuffleRed then
    _util.AddMonologue(1760, "DialogStrings", _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.Inventory_PuffleBlack then
    _util.AddMonologue(1762, "DialogStrings", _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.Inventory_PuffleYellow then
    _util.AddMonologue(1761, "DialogStrings", _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.Inventory_PuffleBlue then
    _util.AddMonologue(1764, "DialogStrings", _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.Inventory_PuffleGreen then
    _util.SetSuccess(_util.GetSelf(), true)
  elseif _util.GetSource() == _id.Inventory_PufflePink then
    _util.AddMonologue(1763, "DialogStrings", _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.Inventory_PufflePurple then
    _util.AddMonologue(1759, "DialogStrings", _const.END_DIALOG, 0)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COLLIDED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  if L1_1 == _id.Inventory_PuffleGreen then
    function L1_1()
      _util.DisableInput()
      _util.SwitchState("grab", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.DelItem(_util.GetSelf())
      _util.EnableInput()
      _util.SetSuitcaseItemEnabled(_id.SuitCase_PuffleDiploma, true)
      _util.DisplayPopUp(1766, "UI/Zoom/Diploma", false, "DialogStrings")
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddMonologue(1765, "DialogStrings", _const.CHANGE_NPC, _id.M3C2_PuffleTraining_PH, 4)
    end
    scriptPlay(L1_1)
  end
end
