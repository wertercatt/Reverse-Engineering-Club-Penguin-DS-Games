if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(3116)
    _util.AddLoopingOption(3118, 3121, _const.UPDATE_LOOP)
    _util.AddLoopingOption(3119, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(3120, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetVar("M5C1_crash") < 2 then
    if _util.GetComCount() == 0 then
      _util.AddComText(3082)
      _util.AddComOption(3083, _const.CHANGE_DIALOG, 1)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(3084)
      _util.AddComOption(3085, _const.CHANGE_DIALOG, 2)
    elseif _util.GetComCount() == 2 then
      _util.AddComText(3086)
      _util.AddComOption(3087, _const.CHANGE_DIALOG, 3)
    elseif _util.GetComCount() == 3 then
      _util.SetVar("M5C1_crash", 2)
      _util.ShowMap()
      _util.AddComText(3088)
      _util.AddComOption(3089, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M5C1_crash") == 2 and _util.GetVar("robostatus") == 0 then
    if _util.GetComCount() == 0 then
      _util.AddComText(3088)
      _util.AddComOption(3089, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("robostatus") == 1 then
    if _util.GetComCount() == 0 then
      _util.AddComText(3169)
      _util.AddComOption(3170, _const.CHANGE_DIALOG, 1)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(3171)
      _util.AddComOption(3172, _const.CHANGE_DIALOG, 2)
    elseif _util.GetComCount() == 3 then
      _util.AddComText(3173)
      _util.AddComOption(3174, _const.END_DIALOG, 0)
    end
  end
end
