if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetActiveMission() == 0 and _util.GetActiveChapter() > 0 and not _util.IsCommandCoachActive() then
  _util.StartMissionSelect()
else
end
