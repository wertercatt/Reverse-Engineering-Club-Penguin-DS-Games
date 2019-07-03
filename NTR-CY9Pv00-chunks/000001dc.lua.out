if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(_text.COMMANDCOACH_NPCSTATION_GREET)
    _util.AddLoopingOption(_text.COMMANDCOACH_NPCSTATION_Q1, _text.COMMANDCOACH_NPCSTATION_A1, _const.UPDATE_LOOP)
    _util.AddLoopingOption(_text.COMMANDCOACH_NPCSTATION_Q2, _text.COMMANDCOACH_NPCSTATION_A2, _const.UPDATE_LOOP)
    _util.AddLoopingOption(_text.COMMANDCOACH_NPCSTATION_QUIT, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(_text.COMMANDCOACH_NPCSTATION_QUITRESPONSE, _const.END_DIALOG, 0)
  end
end
