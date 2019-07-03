if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.COMBINE and (_util.GetSource() == _id.M1_rope or _util.GetSource() == _id.M1_bucket) then
  _util.RemoveInventoryItem(_id.M1_rope)
  _util.RemoveInventoryItem(_id.M1_bucket)
  _util.AddInventoryItem(_id.C1_RopeNBucket)
  _util.SetCombinationSuccess(1)
end
