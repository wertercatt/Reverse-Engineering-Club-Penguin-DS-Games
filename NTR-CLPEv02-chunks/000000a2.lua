if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetActiveMission() == 0 and _util.GetVar("FP02_introMine") == 1 then
  if _util.GetReason() == _const.TOUCHED then
    _util.AddMonologue(3409)
  end
elseif _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(1088)
end
