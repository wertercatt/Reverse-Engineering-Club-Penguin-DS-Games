if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(2339)
    _util.AddLoopingOption(2340, 2343, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2341, 2344, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2342, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(4421, _const.END_DIALOG, 0)
  end
end
