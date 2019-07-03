local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COMBINE
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSelf
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.SetExitLocked
  L1_1(_id.M6_CaveExit, false)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COMBINE
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSelf
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  if L1_1 == _id.M6_RopeA or L1_1 == _id.M6_RopeB then
    _util.RemoveInventoryItem(_id.M6_Anchor)
    _util.RemoveInventoryItem(L1_1)
    _util.AddInventoryItem(_id.M6_GrapplingHook)
    _util.SetCombinationSuccess(1)
    _util.SetSpawn(0, _id.M6_Anchor)
    _util.SetSpawn(0, _id.M6_RopeA)
    _util.SetSpawn(0, _id.M6_RopeB)
  end
end
