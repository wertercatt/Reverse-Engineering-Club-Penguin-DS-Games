if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 1 then
    _util.AddMonologue(140)
  elseif _util.GetActiveMission() == 2 and _util.GetActiveChapter() == 2 then
    _util.AddMonologue(1073)
  elseif _util.GetActiveMission() == 3 and _util.GetActiveChapter() == 3 then
    _util.AddMonologue(2036)
  elseif _util.GetActiveMission() == 5 and _util.GetActiveChapter() == 1 then
    _util.AddMonologue(3093)
  else
    _util.AddMonologue(713)
  end
end
