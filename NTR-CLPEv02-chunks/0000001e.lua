if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetReason() == _const.TOUCHED and _util.GetActiveMission() == 5 and _util.GetActiveChapter() == 1 then
  if _util.GetVar("robostatus") == 1 then
    _util.AddMonologue(3093)
  elseif _util.GetVar("robostatus") == 2 then
    _util.AddMonologue(3120)
  end
end
