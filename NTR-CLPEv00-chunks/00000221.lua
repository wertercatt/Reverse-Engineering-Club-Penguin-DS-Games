if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C2_JPG_Intro") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddConversation(1619, 1620, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddConversation(1621, 1622, -1, _const.CHANGE_DIALOG, 2)
    elseif _util.GetConversationCount() == 2 then
      _util.AddConversation(1623, 1624, -1, _const.CHANGE_DIALOG, 3)
    elseif _util.GetConversationCount() == 3 then
      _util.SetVar("M3C2_JPG_Intro", 1)
      _util.AddDialog(1625, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M3C2_postgame") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(1628)
      _util.AddLoopingOption(1629, 1631, _const.CHANGE_DIALOG, 1)
      _util.AddLoopingOption(1630, -1, _const.END_DIALOG, 0)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(1631, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M3C2_postgame") == 1 and _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(1632)
    _util.AddLoopingOption(1633, 1636, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1634, 1637, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1635, -1, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.COMMUNICATOR and _util.GetVar("M3C2_JPGGone") == 1 then
  if _util.GetComCount() == 0 then
    _util.AddComText(1805)
    _util.AddComOption(1806, _const.CHANGE_DIALOG, 1)
    _util.AddComOption(1807, _const.CHANGE_DIALOG, 2)
    _util.AddComOption(1808, _const.END_DIALOG, 0)
  elseif _util.GetComCount() == 1 then
    _util.AddComText(1809, _const.END_DIALOG, 0)
  elseif _util.GetComCount() == 2 then
    _util.AddComText(1810, _const.END_DIALOG, 0)
  end
end
