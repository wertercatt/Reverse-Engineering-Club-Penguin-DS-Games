local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L0_0(_const.TOUCHED)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  function L0_0()
    _util.DelItem(_util.GetSelf())
    _util.SetSuitcaseItemEnabled(_id.SuitCase_SpyGlasses, true)
    _util.DisplayPopUp(722, "UI/Zoom/SpyGlasses_Badge", true, "DialogStrings")
    repeat
      scriptWait()
    until _util.IsPopUpVisible() == false
    _util.SwitchState("closing", _id.Object_CommandTable)
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.Object_CommandTable)
    _util.SetVar("M1C3_haveBadge", 1)
  end
  scriptPlay(L0_0)
end
