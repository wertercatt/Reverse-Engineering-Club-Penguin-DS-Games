if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("FixMachine") == 2 then
    _util.HideMap()
    _util.ChangeRoom(30)
  elseif _util.GetVar("FixMachine") == 1 then
    _util.AddMonologue(_text.M11_WHEREDIDTHISCOMEFROM2, "DialogStrings", _const.END_DIALOG, 0)
  elseif _util.GetVar("FixMachine") == 0 then
    _util.AddMonologue(_text.M11_WHEREDIDTHISCOMEFROM1, "DialogStrings", _const.END_DIALOG, 0)
  end
end
