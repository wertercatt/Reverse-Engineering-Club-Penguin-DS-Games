if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddMonologue(917, "DialogStrings", _const.END_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddMonologue(918, "DialogStrings", _const.END_DIALOG, 1)
  end
end
