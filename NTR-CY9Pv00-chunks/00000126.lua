if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetConversationCount() == 0 then
  if _util.GetVar("HeliumTouch") == 2 then
    _util.AddMonologue(_text.M8_ITEM_HELIUM_BALLOON, "DialogStrings", _const.END_DIALOG, 0)
    _util.AddInventoryItem(_id.Inventory_Helium)
    _util.DelItem(_util.GetSelf())
  else
    _util.SetVar("HeliumTouch", 1)
    _util.AddMonologue(_text.ITEM_GADGETROOM_SUPERHELIUM_TOUCH, "DialogStrings", _const.END_DIALOG, 0)
  end
end
