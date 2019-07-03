if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M4C2_introTown") == 0 then
    _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
    if _util.GetConversationCount() == 0 then
      _util.AddConversation(2347, 2348, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddConversation(2349, 2350, -1, _const.CHANGE_DIALOG, 2)
    elseif _util.GetConversationCount() == 2 then
      _util.AddConversation(2351, 2352, -1, _const.CHANGE_DIALOG, 3)
    elseif _util.GetConversationCount() == 3 then
      _util.SetVar("M4C2_introTown", 1)
      _util.AddConversation(2353, 2354, -1, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M4C2_deadWB") ~= 2 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(2355)
      _util.AddLoopingOption(2356, 2359, _const.UPDATE_LOOP)
      _util.AddLoopingOption(2357, 2360, _const.UPDATE_LOOP)
      _util.AddLoopingOption(2358, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(4422, _const.END_DIALOG, 0)
    end
  elseif _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(2385)
    _util.AddLoopingOption(2386, 2389, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2387, 2390, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2388, -1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 100 then
    _util.AddConversation(2377, 2378, -1, _const.CHANGE_DIALOG, 101)
  elseif _util.GetConversationCount() == 101 then
    _util.AddConversation(2379, 2380, -1, _const.CHANGE_DIALOG, 102)
  elseif _util.GetConversationCount() == 102 then
    _util.AddConversation(2381, 2382, -1, _const.CHANGE_DIALOG, 103)
  elseif _util.GetConversationCount() == 103 then
    _util.SetVar("M4C2_introDeadBot", 1)
    _util.AddConversation(2383, 2384, -1, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_WBot then
  _util.AddDialog(2391, _const.END_DIALOG, 0)
end
