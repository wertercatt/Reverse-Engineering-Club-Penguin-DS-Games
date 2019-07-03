if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.COMBINE and (_util.GetSource() == _id.M1_spring or _util.GetSource() == _id.M1_bucket) then
  _util.RemoveInventoryItem(_id.M1_spring)
  _util.RemoveInventoryItem(_id.M1_bucket)
  _util.AddInventoryItem(_id.C1_SpringNBucket)
  _util.SetCombinationSuccess(1)
end
