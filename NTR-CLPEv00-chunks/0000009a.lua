if _util.GetActiveMission() == 3 and _util.GetActiveChapter() == 3 and _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C3_WasLockedIn") == 0 then
    _util.AddMonologue(1972)
  elseif _util.GetVar("M3C3_WasLockedIn") == 1 then
    _util.AddMonologue(1973)
  end
end
