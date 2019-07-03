if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C2_JPG_Intro") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddConversation(1586, 1587, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddConversation(1588, 1589, -1, _const.CHANGE_DIALOG, 2)
    elseif _util.GetConversationCount() == 2 then
      _util.AddConversation(1590, 1591, -1, _const.CHANGE_DIALOG, 3)
    elseif _util.GetConversationCount() == 3 then
      _util.SetVar("M3C2_JPG_Intro", 1)
      _util.AddDialog(1592, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M3C2_postgame") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(1595)
      _util.AddLoopingOption(1596, 1598, _const.CHANGE_DIALOG, 1)
      _util.AddLoopingOption(1597, -1, _const.END_DIALOG, 0)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(1598, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M3C2_postgame") == 1 and _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(1599)
    _util.AddLoopingOption(1600, 1603, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1601, 1604, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1602, -1, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.COMMUNICATOR and _util.GetVar("M3C2_JPGGone") == 1 then
  if _util.GetComCount() == 0 then
    _util.AddComText(1772)
    _util.AddComOption(1773, _const.CHANGE_DIALOG, 1)
    _util.AddComOption(1774, _const.CHANGE_DIALOG, 2)
    _util.AddComOption(1775, _const.END_DIALOG, 0)
  elseif _util.GetComCount() == 1 then
    _util.AddComText(1776, _const.END_DIALOG, 0)
  elseif _util.GetComCount() == 2 then
    _util.AddComText(1777, _const.END_DIALOG, 0)
  end
end
