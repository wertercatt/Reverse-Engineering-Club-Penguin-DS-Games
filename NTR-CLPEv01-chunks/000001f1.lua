if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetConversationCount() == 0 then
  _util.AddLoopingConv(2318)
  _util.AddLoopingOption(2319, 2322, _const.UPDATE_LOOP)
  _util.AddLoopingOption(2320, 2323, _const.UPDATE_LOOP)
  _util.AddLoopingOption(2321, -1, _const.END_DIALOG, 0)
end
