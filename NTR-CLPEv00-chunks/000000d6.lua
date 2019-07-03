if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
  _util.AddInterest(_const.COLLIDED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M1C2_trainingIntro") == 0 then
    _util.AddMonologue(280)
  elseif _util.GetVar("M1C2_crateBroken") == 0 then
    _util.AddMonologue(4634)
  else
    _util.AddMonologue(4635)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_PuffleRed and _util.GetVar("M1C2_crateBroken") == 0 then
  _util.SetSuccess(_util.GetSelf(), true)
end
if _util.GetReason() == _const.COLLIDED and _util.GetSource() == _id.Inventory_PuffleRed and _util.GetVar("M1C2_hit") == 0 then
  _util.SetVar("M1C2_hit", 1)
  _util.SetVar("M1C2_crateBroken", 1)
  _util.PlaySFX(14)
  _util.SwitchState("smash", _util.GetSelf())
end
