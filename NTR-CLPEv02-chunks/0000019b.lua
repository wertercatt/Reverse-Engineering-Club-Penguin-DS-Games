if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  _util.AddLoopingConv(2607)
  _util.AddLoopingOption(2608, 2611, _const.UPDATE_LOOP)
  _util.AddLoopingOption(2609, 2612, _const.UPDATE_LOOP)
  _util.AddLoopingOption(2610, -1, _const.END_DIALOG, 0)
end
