if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    if _util.GetVar("takeBalloons") == 0 then
      _util.AddLoopingConv(_text.M8_LIGHTHOUSE_BALLOONNPC_GREET)
      _util.AddLoopingOption(_text.M8_LIGHTHOUSE_BALLOONNPC_Q1, -1, _const.CHANGE_DIALOG, 1)
      _util.AddLoopingOption(_text.M8_LIGHTHOUSE_BALLOONNPC_QUIT, -1, _const.CHANGE_DIALOG, 2)
    else
      _util.AddConversation(_text.M8_LIGHTHOUSE_BALLOONNPC_GREET, _text.M8_LIGHTHOUSE_BALLOONNPC_QUIT, -1, _const.CHANGE_DIALOG, 2)
    end
  elseif _util.GetConversationCount() == 1 then
    _util.SetVar("takeBalloons", 1)
    _util.AddDialog(_text.M8_LIGHTHOUSE_BALLOONNPC_A1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(_text.M8_LIGHTHOUSE_BALLOONNPC_QUITRESPONSE, _const.END_DIALOG, 0)
  end
end
