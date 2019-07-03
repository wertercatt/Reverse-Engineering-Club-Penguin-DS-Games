local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
if L2_2 == _const.CREATED then
  L2_2 = _util
  L2_2 = L2_2.AddInterest
  L2_2(_const.TOUCHED)
  L2_2 = _util
  L2_2 = L2_2.AddInterest
  L2_2(_const.ITEM_DROPPED)
end
if L0_0 == 1 and (L1_1 == 2 or L1_1 == 3) then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.TOUCHED then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L2_2(338)
  end
elseif L0_0 == 2 and L1_1 == 1 then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.TOUCHED then
    L2_2 = _util
    L2_2 = L2_2.GetConversationCount
    L2_2 = L2_2()
    if L2_2 == 0 then
      _util.AddMonologue(844)
      _util.SetVar("M2C1_searchedSportShop", 1)
    elseif L2_2 == 1 then
      _util.AddMonologue(906, "DialogStrings", _const.CHANGE_DIALOG, 2)
    elseif L2_2 == 2 then
      _util.AddMonologue(907, "DialogStrings", _const.CHANGE_NPC, _id.M2C1_Dot_SS, 2)
    end
  end
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.ITEM_DROPPED then
    L2_2 = _util
    L2_2 = L2_2.GetSource
    L2_2 = L2_2()
    if L2_2 == _id.Object_LostKey then
      L2_2 = _util
      L2_2 = L2_2.AddMonologue
      L2_2(905, "DialogStrings", _const.CHANGE_DIALOG, 1)
    end
  end
elseif L0_0 == 2 and L1_1 == 2 then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.TOUCHED then
    L2_2 = _util
    L2_2 = L2_2.GetExitLocked
    L2_2 = L2_2(_util.GetSelf())
    if L2_2 == true then
      L2_2 = print
      L2_2("PRINT THE DOOR ID is...: ", _util.GetSelf)
      L2_2 = print
      L2_2("If the door is locked the number is true or 1", _util.GetExitLocked(_util.GetSelf()))
      L2_2 = print
      L2_2("PRINT THE  KEY ID is...: ", _id.Inventory_KeyWelded)
      L2_2 = _util
      L2_2 = L2_2.AddMonologue
      L2_2(1066)
    end
  end
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.ITEM_DROPPED then
    L2_2 = _util
    L2_2 = L2_2.GetSource
    L2_2 = L2_2()
    if L2_2 == _id.Inventory_KeyWelded then
      L2_2 = print
      L2_2("PRINT THE DOOR ID is...: ", _util.GetSelf)
      L2_2 = print
      L2_2("If the door is locked the number is true or 1", _util.GetExitLocked(_util.GetSelf()))
      L2_2 = print
      L2_2("PRINT THE  KEY ID is...: ", _id.Inventory_KeyWelded)
      L2_2 = _util
      L2_2 = L2_2.SetExitLocked
      L2_2(_util.GetSelf(), false)
      L2_2 = _util
      L2_2 = L2_2.AddMonologue
      L2_2(1067)
      L2_2 = _util
      L2_2 = L2_2.RemoveInventoryItem
      L2_2(_id.Inventory_KeyWelded)
    end
  end
elseif L0_0 == 3 and L1_1 == 3 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M3C3_haveCocoaMachine")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.GetReason
    L2_2 = L2_2()
    if L2_2 == _const.TOUCHED then
      L2_2 = _util
      L2_2 = L2_2.AddMonologue
      L2_2(1895)
    end
  end
else
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.TOUCHED then
    L2_2 = _util
    L2_2 = L2_2.GetSelf
    L2_2 = L2_2()
    if _util.GetExitLocked(L2_2) then
      _util.AddMonologue(4827, "DialogStrings")
    end
  end
end
