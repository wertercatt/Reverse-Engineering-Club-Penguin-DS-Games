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
  function L0_0()
    _util.DisableInput()
    _util.SwitchState("grab", _util.GetSelf())
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_util.GetSelf())
    _util.AddInventoryItem(_id.M2C3_SpoolWheels)
    _util.EnableInput()
    _util.AddMonologue(1169)
    _util.DelItem(_util.GetSelf())
  end
  scriptPlay(L0_0)
end
