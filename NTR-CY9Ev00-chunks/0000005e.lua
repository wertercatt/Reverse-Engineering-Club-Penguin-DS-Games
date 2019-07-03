if _util.GetReason() == _const.TOUCHED and _util.GetExitLocked(_id.TownToGiftShop) then
  _util.AddPlayerThought(_text.M8_UG_GIFTSHOP_TO_BOILER_LOCKED, _const.END_DIALOG, -1, 0)
end
