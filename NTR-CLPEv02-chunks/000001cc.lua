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
    _util.DelItem(_util.GetSelf())
    _util.EnableInput()
    _util.AddInventoryItem(_id.M1C3_ShovelInv)
  end
  scriptPlay(L0_0)
end
