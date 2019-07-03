local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
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
    function L1_1()
      _util.SwitchState("grab", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.AddInventoryItem(_id.Inventory_PizzaSeaWeed)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.DelItem(_util.GetSelf())
    end
    scriptPlay(L1_1)
    _util.IncVar("FPM04_Num_Pizzas")
  end
end
