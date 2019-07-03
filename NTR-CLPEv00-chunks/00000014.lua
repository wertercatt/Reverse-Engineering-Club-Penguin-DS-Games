if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(2380)
    _util.AddLoopingOption(2381, 2383, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(2382, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(4727, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(2383, 2384, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(2385, 2386, -1, _const.CHANGE_DIALOG, 20)
  elseif _util.GetConversationCount() == 20 then
    _util.AddDialog(4728, _const.END_DIALOG, 0)
  end
end
