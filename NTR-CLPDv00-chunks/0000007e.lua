if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(142)
    _util.AddLoopingOption(144, 150, _const.UPDATE_LOOP)
    _util.AddLoopingOption(146, 152, _const.UPDATE_LOOP)
    _util.AddLoopingOption(148, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(154, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.M1C1_Card1 then
    _util.AddDialog(155, _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.M1C1_Card2 then
    _util.AddDialog(156, _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.M1C1_Card3 then
    _util.AddDialog(157, _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.M1C1_Map then
    _util.AddDialog(158, _const.END_DIALOG, 0)
  end
end
