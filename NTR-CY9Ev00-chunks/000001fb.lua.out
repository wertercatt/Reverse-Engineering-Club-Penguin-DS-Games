if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.COMBINE and (_util.GetSource() == _id.C4_InventoryItem_BallonFixed or _util.GetSource() == _id.C4_InventoryItem_SuperHelium) then
  _util.RemoveInventoryItem(_id.C4_InventoryItem_BallonFixed)
  _util.RemoveInventoryItem(_id.C4_InventoryItem_SuperHelium)
  _util.AddInventoryItem(_id.C4_InventoryItem_BallonFilled)
  _util.SetCombinationSuccess(1)
end
