if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetConversationCount() == 10 then
  _util.AddDialog(3203, _const.END_DIALOG, 0)
end
