if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
  _util.AddInterest(_const.COLLIDED)
end
if _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(4036)
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.Inventory_PuffleGreen then
    _util.SetSuccess(_util.GetSelf(), true)
    _util.SetVar("FPM06_hit", 0)
  else
    _util.AddMonologue(4037)
  end
end
if _util.GetReason() == _const.COLLIDED and _util.GetSource() == _id.Inventory_PuffleGreen and _util.GetVar("FPM06_hit") == 0 then
  _util.SetVar("FPM06_hit", 1)
  _util.AddInventoryItem(_id.FPM06_InventoryBoat2)
  _util.DelItem(_util.GetSelf())
end
