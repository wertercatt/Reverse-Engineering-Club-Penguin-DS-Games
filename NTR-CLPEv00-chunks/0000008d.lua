if _util.GetActiveMission() == 3 and _util.GetActiveChapter() == 3 and _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C3_gadgetRoomIntroComplete") == 1 and _util.GetVar("M3C3_madeSnowCat") == 0 then
    _util.AddMonologue(1923)
  elseif _util.GetVar("M3C3_gadgetRoomIntroComplete") == 1 and _util.GetVar("M3C3_madeSnowCat") == 1 then
    _util.AddMonologue(1925)
  end
end
if _util.GetActiveMission() == 5 and _util.GetActiveChapter() == 1 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(3123)
end
