if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
  _util.AddInterest(_const.COLLIDED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M4C3_deadSB") == 2 then
    _util.AddMonologue(4829)
  elseif _util.GetVar("M4C3_deadJB") == 3 and _util.GetVar("M4C3_fightJB") == 0 then
    _util.AddMonologue(2839)
  else
    _util.AddMonologue(4829)
  end
end
