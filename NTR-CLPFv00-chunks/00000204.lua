if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M4C2_deadWB") == 2 then
    _util.AddConversation(2398, 2399, -1, _const.END_DIALOG, 0)
  else
    _util.AddConversation(2371, 2372, -1, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_WBot then
  _util.AddDialog(2400, _const.END_DIALOG, 0)
end
