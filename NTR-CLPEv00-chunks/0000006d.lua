if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(815)
    _util.AddLoopingOption(816, 818, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(817, -1, _const.CHANGE_DIALOG, 100)
  elseif _util.GetConversationCount() == 100 then
    _util.AddDialog(4666, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.SetVar("M2C1_talkPizza", 1)
    _util.AddLoopingConv(818)
    _util.AddLoopingOption(819, 820, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(820)
    _util.AddLoopingOption(821, 823, _const.UPDATE_LOOP)
    _util.AddLoopingOption(822, -1, _const.CHANGE_DIALOG, 101)
  elseif _util.GetConversationCount() == 101 then
    _util.AddDialog(4667, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_Dossier then
  _util.AddConversation(824, -1, -1, _const.END_DIALOG, 0)
end
if _util.GetReason() == _const.COLLIDED then
end
