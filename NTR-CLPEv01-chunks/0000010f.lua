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
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddMonologue
  L1_1 = 653
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.Inventory_PuffleRed
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(654)
  else
    L1_1 = _id
    L1_1 = L1_1.M1C3_ShovelInv
    if L0_0 == L1_1 then
      function L1_1()
        _util.DisableInput()
        _util.SwitchState("shovel", _util.GetSelf())
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.DelItem(_id.M1C3_SnowBarricade)
        _util.AddItem(_id.M1C3_SnowBarricade2)
        _util.AddItem(_id.Doors_WildBerryDoor2River)
        _util.DelItem(_id.M1C3_RiverSnowBarricade)
        _util.AddItem(_id.M1C3_RiverSnowBarricade2)
        _util.AddItem(_id.Doors_WildRiverDoor2Berry)
        _util.SetExitLocked(_id.Doors_WildRiverDoor2Berry, false)
        _util.EnableInput()
      end
      scriptPlay(L1_1)
    end
  end
end
