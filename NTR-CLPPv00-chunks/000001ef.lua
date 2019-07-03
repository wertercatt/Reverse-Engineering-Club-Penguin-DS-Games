local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L0_0(_const.TOUCHED)
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L0_0(_const.ITEM_DROPPED)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L0_0 = L0_0("havePermission")
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L0_0(1132)
  else
    L0_0 = _util
    L0_0 = L0_0.GetVar
    L0_0 = L0_0("havePermission")
    if L0_0 == 1 then
      function L0_0()
        _util.DisableInput()
        _util.SwitchState("flip", _id.M2C3_TroughWater)
        _util.PushCamera(_id.M2C3_TroughWater)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M2C3_TroughWater)
        _util.PopCamera(_id.M2C3_TroughWater)
        _util.DelItem(_id.M2C3_TroughWater)
        _util.AddItem(_id.M2C3_TroughCart)
        _util.EnableInput()
        _util.AddMonologue(1133)
      end
      scriptPlay(L0_0)
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.ITEM_DROPPED then
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.COLLIDED then
end
