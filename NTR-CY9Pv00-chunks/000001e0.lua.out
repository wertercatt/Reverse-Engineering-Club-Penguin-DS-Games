local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L0_0(_const.COMBINE)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  L0_0 = _util
  L0_0 = L0_0.GetSelf
  L0_0 = L0_0()
  if L0_0 == _id.M6_RopeA then
    _util.DelItem(_id.M6_RopeB)
  elseif L0_0 == _id.M6_RopeB then
    _util.DelItem(_id.M6_RopeA)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.COMBINE then
  L0_0 = _util
  L0_0 = L0_0.GetSelf
  L0_0 = L0_0()
  if _util.GetSource() == _id.M6_Anchor then
    _util.RemoveInventoryItem(_id.M6_Anchor)
    _util.RemoveInventoryItem(L0_0)
    _util.AddInventoryItem(_id.M6_GrapplingHook)
    _util.SetCombinationSuccess(1)
    _util.SetSpawn(0, _id.M6_Anchor)
    _util.SetSpawn(0, _id.M6_RopeA)
    _util.SetSpawn(0, _id.M6_RopeB)
  end
end
