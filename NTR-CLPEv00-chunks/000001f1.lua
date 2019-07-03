if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetConversationCount() == 0 then
  _util.AddLoopingConv(2366)
  _util.AddLoopingOption(2367, 2370, _const.UPDATE_LOOP)
  _util.AddLoopingOption(2368, 2371, _const.UPDATE_LOOP)
  _util.AddLoopingOption(2369, -1, _const.END_DIALOG, 0)
end
