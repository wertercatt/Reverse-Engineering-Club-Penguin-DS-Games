if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M4C2_deadWB") == 2 then
    _util.AddDialog(2392, _const.END_DIALOG, 0)
  else
    _util.AddConversation(2365, 2366, -1, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_WBot then
  _util.AddDialog(2394, _const.END_DIALOG, 0)
end
