if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 1 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(138)
end
if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 3 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(920)
end
if _util.GetActiveMission() == 2 and _util.GetActiveChapter() == 1 then
  if _util.GetReason() == _const.TOUCHED then
    _util.AddMonologue(920)
  end
elseif _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(920)
end
