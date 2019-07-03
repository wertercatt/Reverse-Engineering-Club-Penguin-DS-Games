if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("takePizza") == 1 then
    _util.AddInventoryItem(_id.M5_PizzaBox)
    _util.DelItem(_util.GetSelf())
  else
    _util.AddMonologue(_text.M5_PIZZASHOP_PIZZA_TOUCH, "DialogStrings", _const.END_DIALOG, 0)
  end
end
