if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(2332)
    _util.AddLoopingOption(2333, 2335, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(2334, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(4419, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(2335, 2336, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(2337, 2338, -1, _const.CHANGE_DIALOG, 20)
  elseif _util.GetConversationCount() == 20 then
    _util.AddDialog(4420, _const.END_DIALOG, 0)
  end
end
