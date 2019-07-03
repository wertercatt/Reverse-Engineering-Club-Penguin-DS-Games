if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED and _util.GetConversationCount() == 0 then
  _util.AddNPCText(_text.C2_WILDERNESSBERRY_JPG1, _const.END_DIALOG, -1, 1)
end
if _util.GetReason() == _const.AFTER_DIALOG then
  _util.ChangeRoom(21)
end
