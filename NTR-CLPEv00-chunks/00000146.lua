if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(4578)
    _util.AddLoopingOption(4580, 4584, _const.CHANGE_DIALOG, 5)
    _util.AddLoopingOption(4581, 4590, _const.CHANGE_DIALOG, 2)
    _util.AddLoopingOption(4582, 4583, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(4583, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(4590, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(4591, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 5 then
    _util.AddDialog(4584, _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.AddDialog(4585, _const.CHANGE_DIALOG, 7)
  elseif _util.GetConversationCount() == 7 then
    _util.AddDialog(4586, _const.CHANGE_DIALOG, 8)
  elseif _util.GetConversationCount() == 8 then
    _util.AddConversation(4587, 4588, -1, _const.CHANGE_DIALOG, 9)
  elseif _util.GetConversationCount() == 9 then
    _util.AddDialog(4589, _const.END_DIALOG, 0)
  end
end
