if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetActiveMission() == 0 and _util.GetVar("FP03_introForest") == 1 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(3451)
end
