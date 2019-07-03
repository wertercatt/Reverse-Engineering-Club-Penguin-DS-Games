if _util.GetActiveMission() == 4 then
  _util.AddInterest(_const.ITEM_DROPPED)
  if _util.GetVar("SeenUgGiftShop") == 0 then
    _util.ClearObjective()
    _util.SetObjective(_text.M8_OBJ2)
    _util.AddObjective(_text.M8_OBJ4)
    _util.AddSubObjective(_text.M8_OBJ4, _text.M8_OBJ_4A)
    _util.AddMonologue(_text.M8_UG_LIFT_HELP, "GameStrings")
    _util.SetVar("SeenUgGiftShop", 1)
  end
end
_util.SetCursorPos(210, 100)
if _util.GetReason() == _const.TOUCHED then
end
