if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(2324)
    _util.AddLoopingOption(2325, 2328, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2326, 2329, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2327, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(4417, _const.END_DIALOG, 0)
  end
end
