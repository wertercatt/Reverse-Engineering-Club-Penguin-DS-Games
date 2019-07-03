if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(835)
    _util.AddLoopingOption(837, 840, _const.UPDATE_LOOP)
    _util.AddLoopingOption(838, 841, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(839, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(4363, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(841, -1, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(842)
    _util.AddLoopingOption(843, 846, _const.CHANGE_DIALOG, 3)
    _util.AddLoopingOption(844, 847, _const.UPDATE_LOOP)
    _util.AddLoopingOption(845, -1, _const.CHANGE_DIALOG, 11)
  elseif _util.GetConversationCount() == 11 then
    _util.AddDialog(4490, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 3 then
    _util.AddConversation(846, 848, -1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 99 then
    _util.AddDialog(850, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_Dossier then
  _util.AddDialog(849, _const.CHANGE_DIALOG, 99)
end
if _util.GetReason() == _const.COLLIDED then
end
