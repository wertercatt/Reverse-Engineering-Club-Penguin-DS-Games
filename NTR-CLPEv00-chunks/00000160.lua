if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C2_iceBreaking") == 0 then
    _util.AddMonologue(1711, "DialogStrings", _const.END_DIALOG, 0)
  else
    _util.AddMonologue(1712, "DialogStrings", _const.END_DIALOG, 0)
  end
end
