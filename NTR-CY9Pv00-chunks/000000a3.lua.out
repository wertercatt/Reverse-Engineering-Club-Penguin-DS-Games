local L0_0, L1_1, L2_2, L3_3, L4_4
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
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.TOUCHED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L4_4 = "itemsDropped"
  L3_3 = L3_3(L4_4)
  if L3_3 < 3 then
    L3_3 = _util
    L3_3 = L3_3.AddMonologue
    L4_4 = _text
    L4_4 = L4_4.M5_GADGETROOM_GOGGLEMACHINE_TOUCH1
    L3_3(L4_4, "DialogStrings", _const.END_DIALOG, 0)
  else
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L4_4 = "itemsDropped"
    L3_3 = L3_3(L4_4)
    if L3_3 == 3 then
      L3_3 = _util
      L3_3 = L3_3.AddInventoryItem
      L4_4 = 33466
      L3_3(L4_4)
      L3_3 = _util
      L3_3 = L3_3.SetExitLocked
      L4_4 = _id
      L4_4 = L4_4.Doors_Gadget2HQ
      L3_3(L4_4, false)
      L3_3 = _util
      L3_3 = L3_3.ShowMap
      L3_3()
      L3_3 = _util
      L3_3 = L3_3.DelItem
      L4_4 = _id
      L4_4 = L4_4.M5_goggleObject
      L3_3(L4_4)
      L3_3 = _util
      L3_3 = L3_3.SetVar
      L4_4 = "itemsDropped"
      L3_3(L4_4, 4)
      L3_3 = _util
      L3_3 = L3_3.SetVar
      L4_4 = "M5_shadowSpawned"
      L3_3(L4_4, 1)
      L3_3 = _util
      L3_3 = L3_3.SetSpawn
      L4_4 = 0
      L3_3(L4_4, _id.M5_Fisherman)
      L3_3 = _util
      L3_3 = L3_3.SetSpawn
      L4_4 = 0
      L3_3(L4_4, _id.M5_OpenPizza)
      L3_3 = _util
      L3_3 = L3_3.SetSpawn
      L4_4 = 1
      L3_3(L4_4, _id.M5_Shadow)
      L3_3 = _util
      L3_3 = L3_3.SetSpawn
      L4_4 = 1
      L3_3(L4_4, _id.M5_SkiLodge_SofaNPC)
      L3_3 = _util
      L3_3 = L3_3.SetSpawn
      L4_4 = 1
      L3_3(L4_4, _id.M5_Trap)
    else
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L4_4 = "itemsDropped"
      L3_3 = L3_3(L4_4)
      if L3_3 == 4 then
        L3_3 = _util
        L3_3 = L3_3.AddMonologue
        L4_4 = _text
        L4_4 = L4_4.M5_GADGETROOM_GOGGLEMACHINE_TOUCH2
        L3_3(L4_4, "DialogStrings", _const.END_DIALOG, 0)
      else
        L3_3 = _util
        L3_3 = L3_3.AddMonologue
        L4_4 = _text
        L4_4 = L4_4.M5_GADGETROOM_GOGGLEMACHINE_TOUCH3
        L3_3(L4_4, "DialogStrings", _const.END_DIALOG, 0)
      end
    end
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.ITEM_DROPPED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  function L4_4()
    if _UPVALUE0_ == _id.M5_HotChocolate then
      _util.DisableInput()
      _util.RemoveInventoryItem(_id.M5_HotChocolate)
      _util.SwitchState("cocoa", _util.GetSelf())
      repeat
        scriptWait()
      until 0 + 1 >= 87
      _util.PlaySFX(197)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.EnableInput(true)
      _util.IncVar("itemsDropped")
    elseif _UPVALUE0_ == _id.M5_HotSauce then
      _util.DisableInput()
      _util.RemoveInventoryItem(_id.M5_HotSauce)
      _util.SwitchState("hot", _util.GetSelf())
      repeat
        scriptWait()
      until 0 + 1 >= 65
      _util.PlaySFX(197)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.EnableInput(true)
      _util.IncVar("itemsDropped")
    elseif _UPVALUE0_ == _id.M5_InventoryFuel or _UPVALUE0_ == _id.M5_FuelBeach then
      _util.DisableInput()
      _util.RemoveInventoryItem(_id.M5_InventoryFuel)
      _util.RemoveInventoryItem(_id.M5_FuelBeach)
      _util.SwitchState("fuel", _util.GetSelf())
      repeat
        scriptWait()
      until 0 + 1 >= 71
      _util.PlaySFX(197)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.EnableInput(true)
      _util.IncVar("itemsDropped")
    end
    if _util.GetVar("itemsDropped") == 3 then
      _util.SetExitLocked(_id.Doors_Gadget2HQ, true)
      _util.HideMap()
      _util.ActivateNpc(_id.M5_Gary_Gadget, 32)
      _util.MarkObjComplete(_text.M5_OBJ2)
      _util.MarkObjComplete(_text.M5_OBJ2A)
      _util.SwitchState("done", _util.GetSelf())
    else
      _util.SwitchState("", _util.GetSelf())
    end
  end
  scriptPlay(L4_4)
end
