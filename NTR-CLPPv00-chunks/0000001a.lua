if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  _util.AddConversation(3029, 3031, -1, _const.END_DIALOG, 0)
end
