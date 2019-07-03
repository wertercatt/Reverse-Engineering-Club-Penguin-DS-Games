if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M9_boatStart") == 1 then
    _util.AddInventoryItem(32650)
    _util.DelItem(_util.GetSelf())
  else
    _util.AddMonologue(_text.M9_PUMP_OWNER, "DialogStrings", _const.END_DIALOG, 0)
  end
end
