if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 11 then
    _util.AddMonologue(1, "DialogStrings", _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 1 then
    _util.AddMonologue(4526, "DialogStrings", _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddMonologue(2, "DialogStrings", _const.END_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 and _util.GetVar("M1C1_haveCard1") == 0 then
    _util.SetVar("M1C1_haveCard1", 1)
    _util.SetPuffle(_id.Inventory_PuffleBlue)
    _util.EnablePuffle(_const.FLAG_BLUE)
    _util.AddInventoryItem(_id.M1C1_Card1)
    _util.DelItem(_util.GetSelf())
  end
end
