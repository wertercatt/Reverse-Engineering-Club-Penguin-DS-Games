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
  L1_1 = L1_1("FPM05_Coffee_Intro")
  if L1_1 == 0 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3637, 3638, -1, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3639, 3640, -1, _const.CHANGE_DIALOG, 2)
    elseif L0_0 == 2 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3641, 3642, -1, _const.CHANGE_DIALOG, 3)
    elseif L0_0 == 3 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("FPM05_Coffee_Intro", 1)
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3643, _const.END_DIALOG, 0)
    elseif L0_0 == 10 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3657, 3658, -1, _const.CHANGE_DIALOG, 11)
    elseif L0_0 == 11 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3659, 3660, -1, _const.CHANGE_DIALOG, 12)
    elseif L0_0 == 12 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("FPM05_Coffee_Intro", 1)
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3661, _const.END_DIALOG, 0)
    end
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3653, 3654, -1, _const.CHANGE_DIALOG, 11)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3655, 3656, -1, _const.END_DIALOG, 0)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM05_HotSauce_Delivered")
    if L1_1 == 0 then
      if L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(3644, 3645, -1, _const.CHANGE_DIALOG, 1)
      elseif L0_0 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(4450, _const.END_DIALOG, 0)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPM05_HotSauce_Delivered")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("FPM05_Squid_Taken")
        if L1_1 == 0 then
          if L0_0 == 0 then
            L1_1 = _util
            L1_1 = L1_1.AddConversation
            L1_1(3646, 3647, -1, _const.CHANGE_DIALOG, 1)
          elseif L0_0 == 1 then
            L1_1 = _util
            L1_1 = L1_1.AddDialog
            L1_1(4451, _const.END_DIALOG, 0)
          end
        end
      elseif L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(3648, 3649, -1, _const.END_DIALOG, 0)
      end
    end
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
  L1_1 = L1_1.Inventory_FP5_PizzaHotSauce
  if L0_0 == L1_1 then
    function L1_1()
      _util.SetVar("FPM05_HotSauce_Delivered", 1)
      _util.IncVar("FPM05_Num_Delivered")
      if _util.GetVar("FPM05_Num_Delivered") == 4 then
        _util.SetVar("FPM05_All_Delivered", 1)
      end
      _util.RemoveInventoryItem(_id.Inventory_FP5_PizzaHotSauce)
      _util.DisplayPopUp(493, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.ActivateNpc(_util.GetSelf(), 10)
    end
    scriptPlay(L1_1)
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_FP5_PizzaSquid
    if L0_0 ~= L1_1 then
      L1_1 = _id
      L1_1 = L1_1.Inventory_FP5_PizzaSeaweed
      if L0_0 ~= L1_1 then
        L1_1 = _id
        L1_1 = L1_1.Inventory_FP5_PizzaDessert
      end
    elseif L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3650, _const.END_DIALOG, 0)
    end
  end
end
