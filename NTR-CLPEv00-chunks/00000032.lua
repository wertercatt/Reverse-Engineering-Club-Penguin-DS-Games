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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("FPM04_SeaWeed_Delivered")
  if L1_1 == 0 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddLoopingConv
      L1_1(3820)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(3821, 3824, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(3822, 3825, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(3823, -1, _const.END_DIALOG, 0)
    elseif L0_0 == 10 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3827, 3828, -1, _const.CHANGE_DIALOG, 11)
    elseif L0_0 == 11 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("FPM04_SeaWeed_Delivered", 1)
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3829, 3830, -1, _const.END_DIALOG, 0)
    end
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3831, 3832, -1, _const.END_DIALOG, 0)
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
  L1_1 = L1_1.Inventory_PizzaSeaWeed
  if L0_0 == L1_1 then
    function L1_1()
      _util.DecVar("FPM04_Num_Pizzas")
      _util.IncVar("FPM04_Num_Delivered")
      if _util.GetVar("FPM04_Num_Delivered") == 4 then
        _util.SetVar("FPM04_All_Delivered", 1)
      end
      _util.RemoveInventoryItem(_id.Inventory_PizzaSeaWeed)
      _util.DisplayPopUp(626, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddSmileys(5, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      _util.ActivateNpc(_util.GetSelf(), 10)
    end
    scriptPlay(L1_1)
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_PizzaSquid
    if L0_0 ~= L1_1 then
      L1_1 = _id
      L1_1 = L1_1.Inventory_PizzaHotSauce
      if L0_0 ~= L1_1 then
        L1_1 = _id
        L1_1 = L1_1.Inventory_PizzaDessert
      end
    elseif L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3826, _const.END_DIALOG, 0)
    end
  end
end
