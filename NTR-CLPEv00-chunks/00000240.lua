if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("robostatus") == 1 then
    _util.AddMonologue(3254, "DialogStrings", _const.END_DIALOG, 0)
  elseif _util.GetVar("robostatus") == 2 then
    _util.AddMonologue(3255, "DialogStrings", _const.END_DIALOG, 0)
  end
end
