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
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(97, "DialogStrings", _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(98, "DialogStrings", _const.END_DIALOG, 0)
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
    L1_1("M1C1_hit", 0)
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
    _util.PlaySFX(57)
    _util.SwitchState("turn", _id.SnowForts_ClockGearsLeft)
    _util.SwitchState("turn", _id.SnowForts_ClockGearsRight)
    _util.SwitchState("fall", _id.M1C1_Hat)
    repeat
      _util.DisableInput()
      scriptWait()
    until not _util.IsAnimPlaying(_id.M1C1_Hat)
    _util.SetVar("M1C1_HatDown", 1)
    _util.DelItem(_id.M1C1_Hat)
    _util.AddItem(_id.M1C1_HatGroundFake)
    _util.EnableInput()
    _util.ActivateNpc(_id.M1C1_SnowFortNPC, 10)
  end
  if _util.GetVar("M1C1_haveHat") == 0 and _util.GetVar("M1C1_HatDown") == 0 and L0_0 == _id.Inventory_PuffleBlue and _util.GetVar("M1C1_hit") == 0 then
    _util.SetVar("M1C1_hit", 1)
    scriptPlay(L1_1)
  end
end
