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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L1_1 = "M3C2_training"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = 1680
    L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
  else
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = 1681
    L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
  end
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
  L1_1 = L1_1.Inventory_PuffleGreen
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("balloon_hit", 0)
    L1_1 = _util
    L1_1 = L1_1.SetSuccess
    L1_1(_util.GetSelf(), true)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COLLIDED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.Inventory_PuffleGreen
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("balloon_hit")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("balloon_hit", 1)
      function L1_1()
        _util.DisableInput()
        _util.SwitchState("grab", _id.M3C2_TallestM_Balloon1)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M3C2_TallestM_Balloon1)
        _util.EnableInput()
        if _util.GetVar("M3C2_rings") == 0 then
          _util.SetVar("M3C2_rings", 1)
          _util.AddInventoryItem(_id.M3C2_oneRing)
        elseif _util.GetVar("M3C2_rings") == 1 then
          _util.SetVar("M3C2_rings", 2)
          _util.AddInventoryItem(_id.M3C2_twoRing)
          _util.RemoveInventoryItem(_id.M3C2_oneRing)
        elseif _util.GetVar("M3C2_rings") == 2 then
          _util.SetVar("M3C2_rings", 3)
          _util.AddInventoryItem(_id.M3C2_threeRing)
          _util.RemoveInventoryItem(_id.M3C2_twoRing)
        end
        _util.DelItem(_id.M3C2_TallestM_Balloon1)
      end
      scriptPlay(L1_1)
    end
  end
end
