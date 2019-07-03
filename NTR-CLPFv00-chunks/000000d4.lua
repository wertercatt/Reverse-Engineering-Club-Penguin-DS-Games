if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(2946)
    _util.AddLoopingOption(2948, 2951, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2949, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(2950, _const.END_DIALOG, 0)
  end
end
