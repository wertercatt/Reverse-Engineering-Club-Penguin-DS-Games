if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 1 and _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M1C1_haveCard1") == 1 and _util.GetVar("M1C1_baristaCard1") == 0 then
    _util.AddMonologue(4524)
  elseif _util.GetVar("M1C1_haveCard1") == 0 then
    _util.AddMonologue(4523)
  end
end
