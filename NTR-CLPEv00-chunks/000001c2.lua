if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C2_phHat") == 0 then
    _util.AddMonologue(1715, "DialogStrings", _const.END_DIALOG, 0)
  else
    _util.AddMonologue(1716, "DialogStrings", _const.END_DIALOG, 0)
  end
end
