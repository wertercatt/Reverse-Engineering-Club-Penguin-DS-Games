if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(771)
    _util.AddLoopingOption(773, 776, _const.UPDATE_LOOP)
    _util.AddLoopingOption(774, 777, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(775, -1, _const.CHANGE_DIALOG, 100)
  elseif _util.GetConversationCount() == 100 then
    _util.AddDialog(4356, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddLoopingConv(777)
    _util.AddLoopingOption(778, 780, _const.CHANGE_DIALOG, 2)
    _util.AddLoopingOption(779, -1, _const.CHANGE_DIALOG, 101)
    _util.SetVar("M2C1_searchedHQ", 1)
  elseif _util.GetConversationCount() == 101 then
    _util.AddDialog(4357, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(780, -1, -1, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.Inventory_Dossier then
    _util.AddDialog(781, _const.END_DIALOG, 0)
    _util.SetVar("M2C1_searchedHQ", 1)
  elseif _util.GetSource() == _id.Inventory_Duster then
    _util.AddDialog(782, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.COLLIDED then
end
