if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 2 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(279)
end
if _util.GetActiveMission() == 3 and _util.GetActiveChapter() == 1 and _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C1_bubblePopped") == 0 then
    _util.AddMonologue(1380, "DialogStrings", _const.END_DIALOG, 0)
  elseif _util.GetVar("M3C1_impressedLoop") == 1 and _util.GetVar("M3C1_returnedLoop") == 0 then
    _util.AddMonologue(1381, "DialogStrings", _const.END_DIALOG, 0)
  elseif _util.GetVar("M3C1_returnedLoop") == 1 and _util.GetVar("M3C1_tiedJetpack") == 0 then
    _util.AddMonologue(1382, "DialogStrings", _const.END_DIALOG, 0)
  end
end
if _util.GetActiveMission() == 3 and _util.GetActiveChapter() == 2 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(1717, "DialogStrings", _const.END_DIALOG, 0)
end
