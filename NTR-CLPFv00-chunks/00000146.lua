if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(4274)
    _util.AddLoopingOption(4276, 4280, _const.CHANGE_DIALOG, 5)
    _util.AddLoopingOption(4277, 4286, _const.CHANGE_DIALOG, 2)
    _util.AddLoopingOption(4278, 4279, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(4279, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(4286, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(4287, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 5 then
    _util.AddDialog(4280, _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.AddDialog(4281, _const.CHANGE_DIALOG, 7)
  elseif _util.GetConversationCount() == 7 then
    _util.AddDialog(4282, _const.CHANGE_DIALOG, 8)
  elseif _util.GetConversationCount() == 8 then
    _util.AddConversation(4283, 4284, -1, _const.CHANGE_DIALOG, 9)
  elseif _util.GetConversationCount() == 9 then
    _util.AddDialog(4285, _const.END_DIALOG, 0)
  end
end
