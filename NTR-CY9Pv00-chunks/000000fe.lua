if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.M5_InventoryEmptyCup then
  _util.SetVar("cupPlaced", 1)
  _util.AddItem(_id.M5_CocoaCup)
  _util.RemoveInventoryItem(_id.M5_InventoryEmptyCup)
end
