if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
  _util.AddInterest(_const.COLLIDED)
end
if _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(_text.C3_ROOKIE_HAT_MONOLOGUE)
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_PuffleGreen then
  _util.SetSuccess(_util.GetSelf(), true)
end
if _util.GetReason() == _const.COLLIDED and _util.GetSource() == _id.Inventory_PuffleGreen then
  _util.AddInventoryItem(_id.C3_RookiesHat)
  _util.SetVar("gotHat", 1)
  _util.ChangeBaseAnim("NPC/M3/Rookie/RookiePole", _id.C3_TM_Rookie, "idle")
  _util.DelItem(_util.GetSelf())
end
