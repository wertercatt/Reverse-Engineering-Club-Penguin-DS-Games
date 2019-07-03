if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
  _util.AddInterest(_const.COLLIDED)
end
if _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(4251)
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.Inventory_PuffleBlue then
    _util.SetVar("FPM12_hit", 0)
    _util.SetSuccess(_util.GetSelf(), true)
  else
    _util.AddMonologue(4252)
  end
end
if _util.GetReason() == _const.COLLIDED and _util.GetSource() == _id.Inventory_PuffleBlue and _util.GetVar("FPM12_hit") == 0 then
  _util.SetVar("FPM12_hit", 1)
  _util.PlaySFX(57)
  _util.AddItem(_id.FPM14_Coconut_Beach)
  _util.AddMonologue(4253)
  _util.AddItem(_id.FPM14_EmptyPalmTree_Beach)
  _util.DelItem(_util.GetSelf())
end
