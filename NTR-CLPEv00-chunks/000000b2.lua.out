if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(3256)
    _util.AddLoopingOption(3258, 3262, _const.CHANGE_DIALOG, 2)
    _util.AddLoopingOption(3259, 3263, _const.UPDATE_LOOP)
    _util.AddLoopingOption(3260, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(3261, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(3262, 3264, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(3265, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(3269, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 20 then
    _util.AddDialog(3270, _const.END_DIALOG, 0)
  end
end
