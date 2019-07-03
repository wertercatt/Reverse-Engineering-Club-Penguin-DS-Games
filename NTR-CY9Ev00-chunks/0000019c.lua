local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
setupItems(L0_0, L1_1)
spypodCheck(L0_0, L1_1)
mapCheck(L0_0, L1_1)
communicatorCheck(L0_0, L1_1)
if L0_0 == 5 then
  _util.SetCursorPos(_util.GetX(_id.M9_IcebergTarget), _util.GetY(_id.M9_IcebergTarget))
  if _util.HasInventoryItem(_id.M9_DuckReceiver) or _util.HasInventoryItem(_id.M9_DuckDeflated) or _util.HasInventoryItem(_id.M9_DuckInflated) or _util.HasInventoryItem(_id.M9_DuckPatched) then
    _util.PushCamera(_id.M9_IcebergTarget)
  end
end
