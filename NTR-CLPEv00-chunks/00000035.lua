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
  L0_0 = L0_0("FPM05_Dojo_Intro")
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L0_0(3902, "DialogStrings", _const.END_DIALOG, 0)
  else
    function L0_0()
      _util.AddInventoryItem(_id.Inventory_FP5_PizzaSeaweed)
      _util.SetVar("FPM05_SeaWeed_Taken", 1)
      _util.DelItem(_util.GetSelf())
    end
    scriptPlay(L0_0)
  end
end
