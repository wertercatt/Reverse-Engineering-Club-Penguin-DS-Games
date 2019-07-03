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
  L1_1 = "M3C1_tiedJackHammer"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = 1434
    L0_0(L1_1)
  else
    L0_0 = _util
    L0_0 = L0_0.GetVar
    L1_1 = "M3C1_tiedJackHammer"
    L0_0 = L0_0(L1_1)
    if L0_0 == 1 then
      L0_0 = _util
      L0_0 = L0_0.AddMonologue
      L1_1 = 1435
      L0_0(L1_1)
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
        _util.PlaySFX(102)
        _util.SwitchState("rope", _id.M3C1_JackHammer)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M3C1_JackHammer)
        _util.DelItem(_id.M3C1_JackHammer)
        _util.DelItem(_id.M3C1_Rory)
        _util.DelItem(_id.M3C1_Manager)
        _util.AddItem(_id.M3C1_JackHammerRoped)
        _util.AddItem(_id.M3C1_ManagerCalm)
        _util.AddItem(_id.M3C1_RoryCalm)
        _util.SetVar("M3C1_tiedJackHammer", 1)
        _util.EnableInput()
        _util.DisplayPopUp(626, "UI/Smilie", false)
        repeat
          scriptWait()
        until _util.IsPopUpVisible() == false
        _util.AddSmileys(10, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
        _util.ActivateNpc(_id.M3C1_ManagerCalm, 0)
      end
      scriptPlay(L1_1)
    end
  end
end
