if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  _util.AddInventoryItem(_id.M8_InvLantern_Off)
  _util.DelItem(_util.GetSelf())
end
