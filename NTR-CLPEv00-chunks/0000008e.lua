if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(2387)
    _util.AddLoopingOption(2388, 2391, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2389, 2392, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2390, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(4729, _const.END_DIALOG, 0)
  end
end
