if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  _util.DisplayPopUp(_text.M8_ITEM_SNAKEPIECE, "UI/InventoryPanel/snakeGadget")
  _util.DelItem(_util.GetSelf())
end
