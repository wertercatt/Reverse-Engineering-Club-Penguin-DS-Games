if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M1C1_haveCard2") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(46)
      _util.AddLoopingOption(48, 54, _const.UPDATE_LOOP)
      _util.AddLoopingOption(50, 56, _const.UPDATE_LOOP)
      _util.AddLoopingOption(52, -1, _const.CHANGE_DIALOG, 10)
    elseif _util.GetConversationCount() == 10 then
      _util.AddDialog(58, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C1_haveCard2") == 1 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(59)
      _util.AddLoopingOption(61, 65, _const.CHANGE_DIALOG, 1)
      _util.AddLoopingOption(63, -1, _const.CHANGE_DIALOG, 10)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(65, _const.END_DIALOG, 0)
    elseif _util.GetConversationCount() == 10 then
      _util.AddDialog(67, _const.END_DIALOG, 0)
    end
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.M1C1_Card1 then
    _util.AddDialog(68, _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.M1C1_Card2 then
    _util.AddDialog(70, _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.M1C1_Card3 then
    _util.AddDialog(71, _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.M1C1_Map then
    _util.AddDialog(72, _const.END_DIALOG, 0)
  end
end
