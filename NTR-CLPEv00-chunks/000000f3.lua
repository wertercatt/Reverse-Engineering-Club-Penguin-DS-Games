if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 2 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(325)
end
if _util.GetActiveMission() == 2 and _util.GetActiveChapter() == 2 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(1094)
end
if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 3 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(526)
end
if _util.GetActiveMission() == 3 and _util.GetActiveChapter() == 3 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(2072)
end
if _util.GetActiveMission() == 5 and _util.GetActiveChapter() == 1 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(4810)
end
