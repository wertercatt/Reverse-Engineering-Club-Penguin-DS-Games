if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(_text.C4_PIZZAPARLOR_CHEF_GREET)
    _util.AddLoopingOption(_text.C4_PIZZAPARLOR_CHEF_Q1, -1, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(_text.C4_PIZZAPARLOR_CHEF_Q2, -1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddLoopingConv(_text.C4_PIZZAPARLOR_CHEF_A1)
    _util.AddLoopingOption(_text.C4_PIZZAPARLOR_CHEF_A1_Q1, -1, _const.CHANGE_DIALOG, 2)
    _util.AddLoopingOption(_text.C4_PIZZAPARLOR_CHEF_A1_Q2, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(_text.C4_PIZZAPARLOR_CHEF_A1_Q1_A1)
    _util.AddLoopingOption(_text.C4_PIZZAPARLOR_CHEF_END, -1, _const.END_DIALOG, 10)
    _util.SetVar("C4_CanTakePizzaPan", 1)
    _util.SetVar("C4_CanTakeMop", 1)
  elseif _util.GetConversationCount() == 3 then
    _util.AddLoopingConv(_text.C4_PIZZAPARLOR_CHEF_A1_Q2_A1)
    _util.AddLoopingOption(_text.C4_PIZZAPARLOR_CHEF_END, -1, _const.END_DIALOG, 10)
    _util.SetVar("C4_CanTakePizzaPan", 1)
    _util.SetVar("C4_CanTakeMop", 1)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG then
  _util.SwitchState("", _util.GetSelf())
end
