if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.COMBINE and _util.GetSource() == _id.Inventory_BalloonBox and not _util.HasInventoryItem(_id.Inventory_Balloon) then
  _util.AddInventoryItem(_id.Inventory_Balloon)
  _util.AddMonologue(_text.M8_GAGETROOM_ITEM_HELIUM_PICK, "DialogStrings", _const.END_DIALOG, 0)
  _util.SetCombinationSuccess(1)
end
