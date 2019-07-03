if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(_text.M9_MINESHACK_GREET)
    _util.AddLoopingOption(_text.M9_MINESHACK_RORYA_Q1, -1, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(_text.M9_MINESHACK_RORYA_Q2, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddLoopingConv(_text.M9_MINESHACK_RORYA_A)
    _util.AddLoopingOption(_text.M9_MINESHACK_RORYB_QUIT, -1, _const.CHANGE_DIALOG, 2)
    _util.AddLoopingOption(_text.M9_MINESHACK_RORYB_Q2, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(_text.M9_MINESHACK_RORYB_QUITRESPONSE, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(_text.M9_MINESHACK_RORYB_A2_2B, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    if _util.GetVar("M9_canFixMine") == 2 then
      _util.AddLoopingConv(_text.M9_MINESHACK_RORY_TROUGHWIN)
      _util.AddLoopingOption(_text.M9_MINESHACK_RORYC_Q1, -1, _const.CHANGE_DIALOG, 8)
      _util.AddLoopingOption(_text.M9_MINESHACK_RORYC_QUIT, -1, _const.CHANGE_DIALOG, 6)
    else
      _util.SetVar("M9_canFixMine", 1)
      _util.AddDialog(_text.M9_MINESHACK_RORYB_B2, _const.END_DIALOG, 4)
    end
  elseif _util.GetConversationCount() == 6 then
    _util.AddDialog(_text.M9_MINESHACK_RORYC_QUITRESPONSE, _const.END_DIALOG, 7)
  elseif _util.GetConversationCount() == 7 then
    _util.AddLoopingConv(_text.M9_MINESHACK_GREET2)
    _util.AddLoopingOption(_text.M9_MINESHACK_RORYC_Q1, -1, _const.CHANGE_DIALOG, 8)
    _util.AddLoopingOption(_text.M9_MINESHACK_RORYC_QUIT, -1, _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 8 then
    _util.AddDialog(_text.M9_MINESHACK_RORYC_A1_2B, _const.CHANGE_DIALOG, 9)
  elseif _util.GetConversationCount() == 9 then
    _util.AddLoopingConv(_text.M9_MINESHACK_RORYC_B1)
    _util.AddLoopingOption(_text.M9_MINESHACK_RORYD_Q1, -1, _const.CHANGE_DIALOG, 11)
    _util.AddLoopingOption(_text.M9_MINESHACK_RORYD_QUIT, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(_text.M9_MINESHACK_RORYD_QUITRESPONSE, _const.END_DIALOG, 7)
  elseif _util.GetConversationCount() == 11 then
    if _util.GetVar("M9_canFixMine") == 4 then
      _util.AddDialog(_text.M9_MINESHACK_RORY_CARTWIN, _const.CHANGE_DIALOG, 13)
    else
      _util.SetVar("M9_canFixMine", 3)
      _util.AddDialog(_text.M9_MINESHACK_RORYD_A1, _const.END_DIALOG, 11)
    end
  elseif _util.GetConversationCount() == 13 then
    _util.AddDialog(_text.M9_MINESHACK_RORY_CARTWIN2, _const.CHANGE_DIALOG, 14)
  elseif _util.GetConversationCount() == 14 then
    _util.DelItem(_util.GetSelf())
  end
end
