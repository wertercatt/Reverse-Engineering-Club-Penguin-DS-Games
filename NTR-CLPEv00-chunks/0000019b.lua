if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  _util.AddLoopingConv(2691)
  _util.AddLoopingOption(2692, 2695, _const.UPDATE_LOOP)
  _util.AddLoopingOption(2693, 2696, _const.UPDATE_LOOP)
  _util.AddLoopingOption(2694, -1, _const.END_DIALOG, 0)
end
