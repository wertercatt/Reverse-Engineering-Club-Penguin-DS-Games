if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  _util.SetVar("fuelTaken", 1)
  _util.AddSubObjective(_text.M5_OBJ1, _text.M5_1SUBOBJ2)
  _util.MarkSubObjComplete(_text.M5_OBJ1, _text.M5_1SUBOBJ2)
  _util.MarkSubObjComplete(_text.M5_OBJ1, _text.M5_1SUBOBJ5)
  if _util.GetVar("hotCocoaTaken") == 1 and _util.GetVar("hotTaken") == 1 then
    _util.ClearObjective()
    _util.SetObjective(_text.M5_OBJ2)
    _util.AddObjective(_text.M5_OBJ2)
    _util.MarkObjComplete(_text.M5_OBJ1)
  end
end
