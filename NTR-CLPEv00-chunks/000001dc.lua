if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 3 and _util.GetReason() == _const.TOUCHED and _util.GetExitLocked(_util.GetSelf()) then
  _util.AddMonologue(727)
end
if _util.GetActiveMission() == 4 and _util.GetActiveChapter() == 1 and _util.GetReason() == _const.TOUCHED and _util.GetVar("M4C1_helpedJPG") == 0 then
  _util.AddMonologue(2244)
end
