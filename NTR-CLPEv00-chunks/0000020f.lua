if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 2 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(324)
end
if _util.GetActiveMission() == 3 and _util.GetActiveChapter() == 3 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(2071)
end
if _util.GetActiveMission() == 0 and _util.GetActiveChapter() == 11 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(2666, "DialogStrings", _const.END_DIALOG, 0)
end
if _util.GetActiveMission() == 5 and _util.GetActiveChapter() == 1 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(4810)
end
