if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(4568)
    _util.AddLoopingOption(4570, 4574, _const.UPDATE_LOOP)
    _util.AddLoopingOption(4571, 4575, _const.CHANGE_DIALOG, 2)
    _util.AddLoopingOption(4572, 4573, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(4573, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(4575, 4576, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(4577, _const.END_DIALOG, 0)
  end
end
