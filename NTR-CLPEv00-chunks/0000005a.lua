if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(2676)
    _util.AddLoopingOption(2678, 2682, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2679, 2683, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2680, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(2681, _const.END_DIALOG, 0)
  end
end
