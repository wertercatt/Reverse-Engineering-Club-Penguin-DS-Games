if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetActiveMission() == 4 and _util.GetActiveChapter() == 3 then
  _util.AddMonologue(2706)
end
