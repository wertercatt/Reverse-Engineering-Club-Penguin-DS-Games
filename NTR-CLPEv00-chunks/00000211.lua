if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 1 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(209)
end
if _util.GetActiveMission() == 5 and _util.GetActiveChapter() == 1 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(3286)
end
