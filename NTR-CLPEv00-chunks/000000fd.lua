if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M4C2_introTown") == 0 then
    _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
    if _util.GetConversationCount() == 0 then
      _util.AddConversation(2395, 2396, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddConversation(2397, 2398, -1, _const.CHANGE_DIALOG, 2)
    elseif _util.GetConversationCount() == 2 then
      _util.AddConversation(2399, 2400, -1, _const.CHANGE_DIALOG, 3)
    elseif _util.GetConversationCount() == 3 then
      _util.SetVar("M4C2_introTown", 1)
      _util.AddConversation(2401, 2402, -1, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M4C2_deadWB") ~= 2 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(2403)
      _util.AddLoopingOption(2404, 2407, _const.UPDATE_LOOP)
      _util.AddLoopingOption(2405, 2408, _const.UPDATE_LOOP)
      _util.AddLoopingOption(2406, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(4730, _const.END_DIALOG, 0)
    end
  elseif _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(2433)
    _util.AddLoopingOption(2434, 2437, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2435, 2438, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2436, -1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 100 then
    _util.AddConversation(2425, 2426, -1, _const.CHANGE_DIALOG, 101)
  elseif _util.GetConversationCount() == 101 then
    _util.AddConversation(2427, 2428, -1, _const.CHANGE_DIALOG, 102)
  elseif _util.GetConversationCount() == 102 then
    _util.AddConversation(2429, 2430, -1, _const.CHANGE_DIALOG, 103)
  elseif _util.GetConversationCount() == 103 then
    _util.SetVar("M4C2_introDeadBot", 1)
    _util.AddConversation(2431, 2432, -1, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_WBot then
  _util.AddDialog(2439, _const.END_DIALOG, 0)
end
