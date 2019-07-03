if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetActiveMission() == 3 and _util.GetActiveChapter() == 2 then
    _util.AddMonologue(1605, "DialogStrings", _const.END_DIALOG, 0)
  elseif _util.GetActiveMission() == 5 and _util.GetActiveChapter() == 1 then
    if _util.GetVar("M5C1_AnvilHit") == 0 then
      _util.AddMonologue(4502, "DialogStrings", _const.END_DIALOG, 0)
    else
      _util.AddMonologue(3204, "DialogStrings", _const.END_DIALOG, 0)
    end
  else
    _util.AddMonologue(915, "DialogStrings", _const.END_DIALOG, 0)
  end
end
