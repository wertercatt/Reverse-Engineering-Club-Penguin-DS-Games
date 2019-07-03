if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C3_WasLockedIn") == 0 then
    _util.AddMonologue(1985)
    _util.SetVar("M3C3_GotSigns", 1)
    _util.SetVar("M3C3_FoundClues", 1)
  elseif _util.GetVar("M3C3_WasLockedIn") == 1 then
    _util.AddMonologue(1986)
  end
end
