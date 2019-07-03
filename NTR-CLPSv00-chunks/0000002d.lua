if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 2 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(325)
end
