if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("takeSauces") == 0 then
    _util.AddMonologue(_text.M5_PIZZASHOP_SAUCES_TOUCH, "DialogStrings", _const.END_DIALOG, 0)
  elseif _util.GetVar("takeSauces") == 1 and _util.GetVar("hotTaken") == 0 then
    _util.AddInventoryItem(_id.M5_HotSauce)
    _util.MarkSubObjComplete(_text.M5_OBJ1, _text.M5_1SUBOBJ4)
    _util.SetVar("hotTaken", 1)
    if _util.GetVar("hotCocoaTaken") == 1 and _util.GetVar("fuelTaken") == 1 then
      _util.SetObjective(_text.M5_OBJ2)
      _util.AddObjective(_text.M5_OBJ2)
      _util.MarkObjComplete(_text.M5_OBJ1)
    end
  elseif _util.GetVar("sauceClean") == 0 and _util.GetVar("pizzaDelivered") == 1 and _util.GetVar("takeSauces") == 1 and _util.GetVar("hotTaken") == 0 and _util.GetVar("chocoTaken") == 0 then
    _util.AddMonologue(_text.M5_PIZZASHOP_MESS_TOUCH, "DialogStrings", _const.END_DIALOG, 0)
  else
    _util.AddMonologue(_text.M5_PIZZASHOP_HOTSAUCE_TOUCH, "DialogStrings", _const.END_DIALOG, 0)
  end
end
