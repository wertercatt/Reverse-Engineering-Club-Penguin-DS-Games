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
  L1_1 = 3926
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
  L1_1 = _util
  L1_1 = L1_1.SetVar
  L1_1("FPM09_hit", 0)
  L1_1 = _id
  L1_1 = L1_1.Inventory_PuffleRed
  if L0_0 ~= L1_1 then
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleYellow
  else
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.SetSuccess
      L1_1(_util.GetSelf(), true)
  end
  else
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(3927)
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
  L1_1 = L1_1.Inventory_PuffleRed
  if L0_0 ~= L1_1 then
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleYellow
  elseif L0_0 == L1_1 then
    function L1_1()
      _util.DisableInput()
      if _UPVALUE0_ == _id.Inventory_PuffleRed then
        _util.PlaySFX(14)
      end
      _util.SwitchState("break", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("gone", _util.GetSelf())
      _util.EnableInput()
      _util.DisplayPopUp(493, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.IncVar("FPM09_JobsCompleted")
      _util.AddMonologue(3928)
      _util.DelItem(_util.GetSelf())
    end
    if _util.GetVar("FPM09_hit") == 0 then
      _util.SetVar("FPM09_hit", 1)
      scriptPlay(L1_1)
    end
  end
end
