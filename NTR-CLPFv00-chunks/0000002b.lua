if _util.GetActiveMission() == 3 and _util.GetActiveChapter() == 3 and _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C3_wentInCave") == 0 then
    _util.AddMonologue(1938)
  else
    _util.AddMonologue(1939)
  end
end
