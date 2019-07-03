if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(304)
    _util.AddLoopingOption(306, 308, _const.UPDATE_LOOP)
    _util.AddLoopingOption(307, 309, _const.UPDATE_LOOP)
    _util.AddLoopingOption(310, -1, _const.CHANGE_DIALOG, 1)
    _util.RemoveMapAlert(_const.M1C2PUFFLETRAINERMARK)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(311, -1, -1, _const.END_DIALOG, 0)
  end
end
