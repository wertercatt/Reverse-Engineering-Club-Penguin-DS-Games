local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L0_0 = L0_0("M3C3_askedPermission")
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L0_0(1920)
  else
    function L0_0()
      _util.SwitchState("grab", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SetVar("M3C3_haveCocoaMachine", 1)
      _util.SetExitLocked(_id.Doors_Sports2Garys, true)
      _util.SetExitLocked(_id.Doors_HQ2Gadget, false)
      _util.AddInventoryItem(_id.Inventory_Cocoa)
      _util.DelItem(_util.GetSelf())
    end
    scriptPlay(L0_0)
  end
end
