if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(248)
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.M1C2_TraineePin then
  _util.AddMonologue(249)
end
