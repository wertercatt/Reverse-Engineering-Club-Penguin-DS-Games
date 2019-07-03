if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
end
if _util.GetReason() ~= _const.ITEM_DROPPED or _util.GetSource() == _id.C2_HatchKey then
end
