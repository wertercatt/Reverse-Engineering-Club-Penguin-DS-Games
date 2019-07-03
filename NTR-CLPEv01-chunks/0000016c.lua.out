if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetActiveMission() == 4 and _util.GetActiveChapter() == 1 then
    if _util.GetVar("M4C1_fishingSuccess") == 0 then
      if _util.GetConversationCount() == 0 then
        _util.AddLoopingConv(2203)
        _util.AddLoopingOption(2204, -1, _const.CHANGE_DIALOG, 2)
        _util.AddLoopingOption(2205, -1, _const.END_DIALOG, 0)
      elseif _util.GetConversationCount() == 1 then
        _util.SetVar("M4C1_fishingSuccess", 1)
      end
    else
      _util.AddMonologue(2206)
    end
  else
    _util.AddMonologue(609)
  end
end
