if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetActiveMission() == 2 then
  if _util.GetReason() == _const.TOUCHED then
    if _util.GetVar("pizzaDelivered") == 0 then
      _util.AddDialog(_text.M5_FISHINGHOLE_NPC_GREET, _const.END_DIALOG, 0)
    else
      _util.AddDialog(_text.M5_FISHINGHOLE_NPC_GREET2, _const.END_DIALOG, 0)
    end
  end
  if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.M5_PizzaBox then
    _util.SetVar("pizzaDelivered", 1)
    _util.RemoveInventoryItem(_id.M5_PizzaBox)
    _util.AddItem(_id.M5_OpenPizza)
    _util.AddDialog(_text.M5_FISHINGHOLE_NPC_PIZZADROP, _const.END_DIALOG, 0)
  end
end
if _util.GetActiveMission() == 8 and _util.GetReason() == _const.TOUCHED and _util.GetConversationCount() == 0 then
  _util.AddNPCText(_text.C2_NPC_POND, _const.END_DIALOG, -1, 0)
end
