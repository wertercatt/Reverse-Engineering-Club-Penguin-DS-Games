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
  L1_1 = L1_1("FPM05_Dojo_Intro")
  if L1_1 == 0 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3612, 3613, -1, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3614, 3615, -1, _const.CHANGE_DIALOG, 2)
    elseif L0_0 == 2 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3616, 3617, -1, _const.CHANGE_DIALOG, 3)
    elseif L0_0 == 3 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("FPM05_Dojo_Intro", 1)
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3618, _const.END_DIALOG, 0)
    elseif L0_0 == 10 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3632, 3633, -1, _const.CHANGE_DIALOG, 11)
    elseif L0_0 == 11 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3634, 3635, -1, _const.CHANGE_DIALOG, 12)
    elseif L0_0 == 12 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("FPM05_Dojo_Intro", 1)
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3636, _const.END_DIALOG, 0)
    end
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3628, 3629, -1, _const.CHANGE_DIALOG, 11)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3630, 3631, -1, _const.END_DIALOG, 0)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM05_Squid_Delivered")
    if L1_1 == 0 then
      if L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(3619, 3620, -1, _const.CHANGE_DIALOG, 1)
      elseif L0_0 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(4448, _const.END_DIALOG, 0)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPM05_Squid_Delivered")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("FPM05_SeaWeed_Taken")
        if L1_1 == 0 then
          if L0_0 == 0 then
            L1_1 = _util
            L1_1 = L1_1.AddConversation
            L1_1(3621, 3622, -1, _const.CHANGE_DIALOG, 1)
          elseif L0_0 == 1 then
            L1_1 = _util
            L1_1 = L1_1.AddDialog
            L1_1(4449, _const.END_DIALOG, 0)
          end
        end
      elseif L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(3623, 3624, -1, _const.END_DIALOG, 0)
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
  L1_1 = L1_1.Inventory_FP5_PizzaSquid
  if L0_0 == L1_1 then
    function L1_1()
      _util.SetVar("FPM05_Squid_Delivered", 1)
      _util.IncVar("FPM05_Num_Delivered")
      if _util.GetVar("FPM05_Num_Delivered") == 4 then
        _util.SetVar("FPM05_All_Delivered", 1)
      end
      _util.RemoveInventoryItem(_id.Inventory_FP5_PizzaSquid)
      _util.DisplayPopUp(488, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddSmileys(5, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      _util.ActivateNpc(_util.GetSelf(), 10)
    end
    scriptPlay(L1_1)
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_FP5_PizzaHotSauce
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
      L1_1(3625, _const.END_DIALOG, 0)
    end
  end
end
