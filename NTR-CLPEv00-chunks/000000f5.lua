local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  function L0_0()
    _util.DisableInput()
    _util.SwitchState("grab", _util.GetSelf())
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_util.GetSelf())
    _util.SetSuitcaseItemEnabled(_id.SuitCase_PuffleHat, true)
    _util.EnableInput()
    _util.DisplayPopUp(401, "UI/Zoom/PuffleHandlerHat")
    repeat
      scriptWait()
    until _util.IsPopUpVisible() == false
    _util.ActivateNpc(_id.M3C2_YodelingPH_TallestM, 101)
    _util.SetVar("M3C2_phHat", 1)
  end
  if _util.GetVar("gotHat") == 0 then
    scriptPlay(L0_0)
    _util.SetVar("gotHat", 1)
  end
end
