if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(2600)
    _util.AddLoopingOption(2601, -1, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(2602, -1, _const.CHANGE_DIALOG, 33)
  elseif _util.GetConversationCount() == 33 then
    _util.AddDialog(4478, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(2603, 2604, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(2605, 2606, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(4479, _const.END_DIALOG, 0)
  end
end
