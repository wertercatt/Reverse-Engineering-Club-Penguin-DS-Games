if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddConversation(1566, 1567, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(1568, 1570, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(1571)
    _util.AddLoopingOption(1572, 1575, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1573, 1576, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1574, 1577, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(1606, _const.CHANGE_ROOM, 8)
  end
end
if _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetVar("M3C1_foundLoop") == 0 then
    if _util.GetComCount() == 0 then
      _util.AddComText(1543)
      _util.AddComOption(1544, _const.CHANGE_DIALOG, 1)
      _util.AddComOption(1545, _const.END_DIALOG, 0)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(1546, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M3C1_foundLoop") == 1 and _util.GetVar("M3C1_impressedLoop") == 0 then
    if _util.GetComCount() == 0 then
      _util.AddComText(1547)
      _util.AddComOption(1548, _const.CHANGE_DIALOG, 1)
      _util.AddComOption(1549, _const.END_DIALOG, 0)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(1550, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M3C1_impressedLoop") == 1 and _util.GetVar("M3C1_foundPop") == 0 then
    if _util.GetComCount() == 0 then
      _util.AddComText(1551)
      _util.AddComOption(1552, _const.CHANGE_DIALOG, 1)
      _util.AddComOption(1553, _const.END_DIALOG, 0)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(1554, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M3C1_foundPop") == 1 and _util.GetVar("M3C1_impressedPop") == 0 then
    if _util.GetComCount() == 0 then
      _util.AddComText(1555)
      _util.AddComOption(1556, _const.CHANGE_DIALOG, 1)
      _util.AddComOption(1557, _const.END_DIALOG, 0)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(1558, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M3C1_impressedPop") == 1 then
    if _util.GetComCount() == 0 then
      _util.AddComText(1559)
      _util.AddComOption(1560, _const.CHANGE_DIALOG, 1)
      _util.AddComOption(1561, _const.CHANGE_DIALOG, 2)
      _util.AddComOption(1562, _const.END_DIALOG, 0)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(1563, _const.END_DIALOG, 0)
    elseif _util.GetComCount() == 2 then
      _util.AddComText(1564, _const.END_DIALOG, 0)
    end
  end
end
