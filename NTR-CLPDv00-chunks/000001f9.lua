if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(4343)
    _util.AddLoopingOption(4345, 4348, _const.UPDATE_LOOP)
    _util.AddLoopingOption(4346, 4349, _const.UPDATE_LOOP)
    _util.AddLoopingOption(4347, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(4350, _const.END_DIALOG, 0)
  end
end
