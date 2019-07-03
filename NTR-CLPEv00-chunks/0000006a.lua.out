if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M4C2_deadWB") == 2 then
    if _util.GetConversationCount() == 0 then
      _util.AddConversation(2449, 2450, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddConversation(2451, 2452, -1, _const.CHANGE_DIALOG, 10)
    elseif _util.GetConversationCount() == 10 then
      _util.AddDialog(4732, _const.END_DIALOG, 0)
    end
  elseif _util.GetConversationCount() == 0 then
    _util.AddConversation(2421, 2422, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(2423, 2424, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(4732, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_WBot then
  _util.AddDialog(2453, _const.END_DIALOG, 0)
end
