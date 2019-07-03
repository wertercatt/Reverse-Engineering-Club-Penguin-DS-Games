if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.COMBINE and (_util.GetSource() == _id.C1_InventoryItem_FishOnStick or _util.GetSource() == _id.C1_InventoryItem_JetPack) then
  _util.RemoveInventoryItem(_id.C1_InventoryItem_FishOnStick)
  _util.RemoveInventoryItem(_id.C1_InventoryItem_JetPack)
  _util.AddInventoryItem(_id.C1_InventoryItem_JetPackNStickComplete)
  _util.SetCombinationSuccess(1)
end
