if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M4C2_deadWB") == 2 then
    if _util.GetConversationCount() == 0 then
      _util.AddConversation(2443, 2444, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(4731, _const.END_DIALOG, 0)
    end
  elseif _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(2415)
    _util.AddLoopingOption(2416, 2418, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2417, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(4731, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_WBot then
  _util.AddDialog(2445, _const.END_DIALOG, 0)
end
