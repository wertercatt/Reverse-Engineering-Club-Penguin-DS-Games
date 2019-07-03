if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(149)
    _util.AddLoopingOption(151, 157, _const.UPDATE_LOOP)
    _util.AddLoopingOption(153, 159, _const.UPDATE_LOOP)
    _util.AddLoopingOption(155, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(161, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.M1C1_Card1 then
    _util.AddDialog(162, _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.M1C1_Card2 then
    _util.AddDialog(163, _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.M1C1_Card3 then
    _util.AddDialog(164, _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.M1C1_Map then
    _util.AddDialog(165, _const.END_DIALOG, 0)
  end
end
