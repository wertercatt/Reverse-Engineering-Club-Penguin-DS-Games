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
  L1_1 = L1_1.TOUCHED
  L0_0(L1_1)
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
  L0_0 = L0_0.GetVar
  L1_1 = "M1C1_HatDown"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = _text
    L1_1 = L1_1.M1C1_SNOWFORT_TARGET_TOUCH1
    L0_0(L1_1)
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
  L1_1 = L1_1.Inventory_PuffleBlue
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("Gears_hit", 0)
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
  function L1_1()
    _util.DisableInput()
    _util.SwitchState("turn", _id.SnowForts_ClockGearsLeft)
    _util.SwitchState("turn", _id.SnowForts_ClockGearsRight)
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.SnowForts_ClockGearsRight)
    _util.ChangeBaseAnim("Location/SnowForts/touch/SnowFortsGearsRightSide", _id.SnowForts_ClockGearsRight)
    _util.ChangeBaseAnim("Location/SnowForts/touch/SnowFortsGearLeftSide", _id.SnowForts_ClockGearsLeft)
    _util.EnableInput()
  end
  if L0_0 == _id.Inventory_PuffleBlue and not _util.IsInRoom(_id.M1C1_Hat) and _util.GetVar("Gears_hit") == 0 then
    _util.SetVar("Gears_hit", 1)
    scriptPlay(L1_1)
  end
end
