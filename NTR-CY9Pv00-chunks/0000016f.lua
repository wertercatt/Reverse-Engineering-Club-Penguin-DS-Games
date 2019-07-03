if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  _util.SwitchState("touch", _id.M10_Spotlight2)
  _util.SetVar("M10_Spotlight2", 1)
  if _util.GetVar("M10_Spotlight1") == 1 and _util.GetVar("M10_Spotlight3") == 1 then
    _util.ActivateNpc(_id.M10_NightClubRookie, 100)
  end
end
