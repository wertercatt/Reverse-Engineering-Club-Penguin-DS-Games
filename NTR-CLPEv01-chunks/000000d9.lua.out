if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M1C1_haveCard2") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(39)
      _util.AddLoopingOption(41, 47, _const.UPDATE_LOOP)
      _util.AddLoopingOption(43, 49, _const.UPDATE_LOOP)
      _util.AddLoopingOption(45, -1, _const.CHANGE_DIALOG, 10)
    elseif _util.GetConversationCount() == 10 then
      _util.AddDialog(51, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C1_haveCard2") == 1 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(52)
      _util.AddLoopingOption(54, 58, _const.CHANGE_DIALOG, 1)
      _util.AddLoopingOption(56, -1, _const.CHANGE_DIALOG, 10)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(58, _const.END_DIALOG, 0)
    elseif _util.GetConversationCount() == 10 then
      _util.AddDialog(60, _const.END_DIALOG, 0)
    end
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.M1C1_Card1 then
    _util.AddDialog(61, _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.M1C1_Card2 then
    _util.AddDialog(63, _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.M1C1_Card3 then
    _util.AddDialog(64, _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.M1C1_Map then
    _util.AddDialog(65, _const.END_DIALOG, 0)
  end
end
