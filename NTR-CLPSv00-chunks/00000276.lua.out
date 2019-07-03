if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(2964)
    _util.AddLoopingOption(2966, 2969, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2967, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(2968, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetVar("M5C1_crash") < 2 then
    if _util.GetComCount() == 0 then
      _util.AddComText(2930)
      _util.AddComOption(2931, _const.CHANGE_DIALOG, 1)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(2932)
      _util.AddComOption(2933, _const.CHANGE_DIALOG, 2)
    elseif _util.GetComCount() == 2 then
      _util.AddComText(2934)
      _util.AddComOption(2935, _const.CHANGE_DIALOG, 3)
    elseif _util.GetComCount() == 3 then
      _util.SetVar("M5C1_crash", 2)
      _util.ShowMap()
      _util.AddComText(2936)
      _util.AddComOption(2937, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M5C1_crash") == 2 and _util.GetVar("robostatus") == 0 then
    if _util.GetComCount() == 0 then
      _util.AddComText(2936)
      _util.AddComOption(2937, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("robostatus") == 1 then
    if _util.GetComCount() == 0 then
      _util.AddComText(3016)
      _util.AddComOption(3017, _const.CHANGE_DIALOG, 1)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(3018)
      _util.AddComOption(3019, _const.CHANGE_DIALOG, 2)
    elseif _util.GetComCount() == 3 then
      _util.AddComText(3020)
      _util.AddComOption(3021, _const.END_DIALOG, 0)
    end
  end
end
