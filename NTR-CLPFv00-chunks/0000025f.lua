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
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L0_0 = L0_0("FPM05_Coffee_Intro")
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L0_0(3651)
  else
    function L0_0()
      _util.AddInventoryItem(_id.Inventory_FP5_PizzaSquid)
      _util.SetVar("FPM05_Squid_Taken", 1)
      _util.DelItem(_util.GetSelf())
    end
    scriptPlay(L0_0)
  end
end
