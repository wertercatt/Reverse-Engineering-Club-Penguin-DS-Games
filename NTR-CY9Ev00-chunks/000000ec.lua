if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.COMBINE and _util.GetSource() == _id.Inventory_Helium and not _util.HasInventoryItem(_id.Inventory_Balloon) then
  _util.AddInventoryItem(_id.Inventory_Balloon)
  _util.SetCombinationSuccess(1)
end
