if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    if _util.GetVar("HerbertFound") == 0 then
      _util.AddDialog(_text.M8_LIGHTHOUSE_BARRELNPC_GREET4, _const.END_DIALOG, 0)
    else
      _util.AddLoopingConv(_text.M8_LIGHTHOUSE_BARRELNPC_GREET)
      _util.AddLoopingOption(_text.M8_LIGHTHOUSE_BARRELNPC_Q1, -1, _const.CHANGE_DIALOG, 1)
      _util.AddLoopingOption(_text.M8_LIGHTHOUSE_BARRELNPC_Q2, -1, _const.CHANGE_DIALOG, 2)
    end
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(_text.M8_LIGHTHOUSE_BARRELNPC_A1, _const.END_DIALOG, 10)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(_text.M8_LIGHTHOUSE_BARRELNPC_A2, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    if _util.GetVar("takeBarrel") == 0 then
      _util.SetVar("takeBarrel", 1)
    end
    _util.AddDialog(_text.M8_LIGHTHOUSE_BARRELNPC_A3_2, _const.END_DIALOG, 11)
  elseif _util.GetConversationCount() == 10 then
    _util.AddLoopingConv(_text.M8_LIGHTHOUSE_BARRELNPC_GREET2)
    _util.AddLoopingOption(_text.M8_LIGHTHOUSE_BARRELNPC_Q1, -1, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(_text.M8_LIGHTHOUSE_BARRELNPC_Q2, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 11 then
    if _util.GetVar("takeBarrel") == 1 then
      _util.AddDialog(_text.M8_ITEM_NPC_HOLDING_BARREL, _const.END_DIALOG, 11)
    else
      _util.ActivateNpc(_util.GetSelf(), 10)
    end
  end
end
