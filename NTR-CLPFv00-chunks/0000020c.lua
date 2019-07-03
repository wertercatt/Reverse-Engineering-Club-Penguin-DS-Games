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
  L1_1 = "M3C1_impressedLoop"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = 1353
    L0_0(L1_1)
  else
    L0_0 = _util
    L0_0 = L0_0.GetVar
    L1_1 = "M3C1_impressedLoop"
    L0_0 = L0_0(L1_1)
    if L0_0 == 1 then
      L0_0 = _util
      L0_0 = L0_0.GetVar
      L1_1 = "M3C1_tiedJetpack"
      L0_0 = L0_0(L1_1)
      if L0_0 == 0 then
        L0_0 = _util
        L0_0 = L0_0.AddMonologue
        L1_1 = 1354
        L0_0(L1_1)
      end
    else
      L0_0 = _util
      L0_0 = L0_0.GetVar
      L1_1 = "M3C1_tiedJetpack"
      L0_0 = L0_0(L1_1)
      if L0_0 == 1 then
        L0_0 = _util
        L0_0 = L0_0.AddMonologue
        L1_1 = 1355
        L0_0(L1_1)
      end
    end
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
  L1_1 = L1_1.Inventory_PufflePink
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.SetSuccess
    L1_1(_util.GetSelf(), true)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M3C1_beingHit", 0)
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
  L1_1 = L1_1.Inventory_PufflePink
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_beingHit")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M3C1_beingHit", 1)
      function L1_1()
        _util.DisableInput()
        _util.SetVar("M3C1_tiedJetpack", 1)
        _util.PlaySFX(102)
        _util.SwitchState("rope", _util.GetSelf())
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.DelItem(_id.M3C1_Jetpack2)
        _util.AddItem(_id.M3C1_JetpackRoped)
        _util.EnableInput()
        _util.ActivateNpc(_id.M3C1_JetpackHandler, 12)
        _util.SetObjective(650)
      end
      scriptPlay(L1_1)
    end
  end
end
