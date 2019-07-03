if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 and _util.GetVar("M3C1_tiedJackHammer") == 0 then
    _util.AddDialog(1433, _const.END_DIALOG, 1)
  elseif _util.GetConversationCount() == 0 and _util.GetVar("M3C1_tiedJackHammer") == 1 then
    _util.ActivateNpc(_util.GetSelf(), 1)
  elseif _util.GetConversationCount() == 1 and _util.GetVar("M3C1_tiedJackHammer") == 0 then
    _util.AddLoopingConv(1444)
    _util.AddLoopingOption(1445, 1448, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1446, 1449, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1447, -1, _const.CHANGE_DIALOG, 11)
  elseif _util.GetConversationCount() == 11 then
    _util.AddDialog(4712, _const.END_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 and _util.GetVar("M3C1_tiedJackHammer") == 1 then
    _util.AddLoopingConv(1450)
    _util.AddLoopingOption(1451, 1453, _const.CHANGE_DIALOG, 2)
    _util.AddLoopingOption(1452, -1, _const.CHANGE_DIALOG, 12)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(1453, _const.END_DIALOG, 3)
  elseif _util.GetConversationCount() == 12 then
    _util.AddDialog(4713, _const.END_DIALOG, 1)
  end
end
