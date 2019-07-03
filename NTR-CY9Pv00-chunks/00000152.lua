if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.COMBINE and (_util.GetSource() == _id.C4_InventoryItem_BallonTorn or _util.GetSource() == _id.C4_InventoryItem_Tape) then
  _util.RemoveInventoryItem(_id.C4_InventoryItem_BallonTorn)
  _util.RemoveInventoryItem(_id.C4_InventoryItem_Tape)
  _util.AddInventoryItem(_id.C4_InventoryItem_BallonFixed)
  _util.SetCombinationSuccess(1)
end
