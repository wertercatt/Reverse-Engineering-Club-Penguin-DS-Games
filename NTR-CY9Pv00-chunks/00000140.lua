if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("canFix") == 1 then
    _util.HideMap()
    _util.ChangeRoom(17)
  else
    _util.AddMonologue(_text.M5_COFFEESHOP_MACHINE_TOUCH, "DialogStrings", _const.END_DIALOG, 0)
  end
end
