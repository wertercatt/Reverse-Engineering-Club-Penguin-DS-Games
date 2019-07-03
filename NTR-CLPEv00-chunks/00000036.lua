if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddConversation(3091, 3092, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(3093, 3094, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(3095, 3096, -1, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddDialog(3097, _const.END_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddLoopingConv(3104)
    _util.AddLoopingOption(3106, 3108, _const.UPDATE_LOOP)
    _util.AddLoopingOption(3107, -1, _const.END_DIALOG, 3)
  end
end
