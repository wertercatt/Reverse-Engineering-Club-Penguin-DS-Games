if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(4651)
    _util.AddLoopingOption(4653, 4656, _const.UPDATE_LOOP)
    _util.AddLoopingOption(4654, 4657, _const.UPDATE_LOOP)
    _util.AddLoopingOption(4655, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(4658, _const.END_DIALOG, 0)
  end
end
