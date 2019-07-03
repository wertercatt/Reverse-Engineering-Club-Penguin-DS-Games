if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("helpShopOwner") == 1 then
    _util.AddInventoryItem(_id.M10_ClothesInventory)
    _util.DelItem(_id.M10_ClothesInventory)
    _util.SetVar("haveGiftShopClothes", 1)
  else
    _util.AddMonologue(_text.M10_GIFTSHOP_ITEMS_NEEDPERMISSION, "DialogStrings", _const.END_DIALOG, 0)
  end
end
