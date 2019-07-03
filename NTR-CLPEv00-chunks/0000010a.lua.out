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
  L0_0 = L0_0.AddMonologue
  L1_1 = 4549
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
  L1_1 = L1_1.Inventory_PuffleBlue
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("FPM12_hit", 0)
    L1_1 = _util
    L1_1 = L1_1.SetSuccess
    L1_1(_util.GetSelf(), true)
  else
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(4550)
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
  L1_1 = L1_1.Inventory_PuffleBlue
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM12_hit")
    if L1_1 == 0 then
      function L1_1()
        _util.SetVar("FPM12_hit", 1)
        _util.PlaySFX(57)
        _util.AddItem(_id.FPM14_Coconut_Beach)
        _util.DisableInput()
        _util.SwitchState("fall", _id.FPM14_Coconut_Beach)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.FPM14_Coconut_Beach)
        _util.SwitchState("", _id.FPM14_Coconut_Beach)
        _util.EnableInput()
        _util.AddItem(_id.FPM14_EmptyPalmTree_Beach)
        _util.ActivateNpc(_id.FPM14_EmptyPalmTree_Beach, 1)
        _util.DelItem(_id.FPM14_PalmTree_Beach)
      end
      scriptPlay(L1_1)
    end
  end
end
