if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.COMBINE and _util.GetSource() == _id.Inventory_PostCard then
  _util.RemoveInventoryItem(_id.Inventory_Pen)
  _util.RemoveInventoryItem(_id.Inventory_PostCard)
  _util.AddInventoryItem(_id.Inventory_PostCardPen)
  _util.SetCombinationSuccess(1)
  _util.SetSpawn(0, _id.Inventory_Pen)
  _util.SetSpawn(0, _id.Inventory_PostCard)
end
