if _util.GetReason() == _const.TOUCHED and _util.GetExitLocked(_id.Doors_CoffeeShopDoor2Upstairs) == false then
  _util.AddPlayerThought(_text.EXIT_LOCKED_BOOKROOM)
end
