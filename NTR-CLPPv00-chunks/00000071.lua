if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(1483, "DialogStrings", _const.END_DIALOG, 0)
end
