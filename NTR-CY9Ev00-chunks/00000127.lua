if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
  _util.AddInterest(_const.COLLIDED)
end
if _util.GetReason() == _const.TOUCHED then
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_PuffleYellow then
  _util.SetSuccess(_util.GetSelf(), true)
end
if _util.GetReason() == _const.COLLIDED and _util.GetSource() == _id.Inventory_PuffleYellow then
  _util.SetupComNpc(_const.COM_GARY, _id.C3_CR_Gary, 0)
  _util.LaunchCommunicator()
end
