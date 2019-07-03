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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
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
  L4_4 = "fuelClose"
  L3_3 = L3_3(L4_4)
  if L3_3 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddMonologue
    L4_4 = _text
    L4_4 = L4_4.M5_BEACON_FUEL_TOUCH
    L3_3(L4_4, "DialogStrings", _const.END_DIALOG, 0)
    L3_3 = _util
    L3_3 = L3_3.AddSubObjective
    L4_4 = _text
    L4_4 = L4_4.M5_OBJ1
    L3_3(L4_4, _text.M5_1SUBOBJ2)
  else
    L3_3 = _util
    L3_3 = L3_3.AddMonologue
    L4_4 = _text
    L4_4 = L4_4.M5_BEACON_FUEL_TOUCH2
    L3_3(L4_4, "DialogStrings", _const.END_DIALOG, 0)
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
  L4_4 = _id
  L4_4 = L4_4.Inventory_PuffleRed
  if L3_3 == L4_4 then
    L4_4 = _util
    L4_4 = L4_4.GetVar
    L4_4 = L4_4("fuelClose")
    if L4_4 == 0 then
      L4_4 = _util
      L4_4 = L4_4.SetSuccess
      L4_4(_util.GetSelf(), true)
      L4_4 = _util
      L4_4 = L4_4.SetVar
      L4_4("M5FuelHit", 0)
    end
  else
    L4_4 = _id
    L4_4 = L4_4.Inventory_PuffleGreen
    if L3_3 == L4_4 then
      L4_4 = _util
      L4_4 = L4_4.GetVar
      L4_4 = L4_4("fuelClose")
      if L4_4 == 0 then
        L4_4 = _util
        L4_4 = L4_4.SetSuccess
        L4_4(_util.GetSelf(), true)
      end
    else
      L4_4 = _id
      L4_4 = L4_4.M5_InventoryFan
      if L3_3 == L4_4 then
        function L4_4()
          _util.DisableInput()
          _util.AddItem(_id.M5_FanBeacon)
          _util.SwitchState("blow", _id.M5_FanBeacon)
          _util.SwitchState("fan", _util.GetSelf())
          repeat
            _util.SetCursorPos(711, 107)
            scriptWait()
          until not _util.IsAnimPlaying(_util.GetSelf())
          _util.SetCursorPos(711, 107)
          _util.SetVar("fuelClose", 1)
          _util.RemoveInventoryItem(_id.M5_InventoryFan)
          _util.SwitchState("disappear", _id.M5_FanBeacon)
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_id.M5_FanBeacon)
          _util.DelItem(_id.M5_FanBeacon)
          _util.AddItem(42809)
          _util.EnableInput(true)
          _util.DelItem(_util.GetSelf())
        end
        scriptPlay(L4_4)
      else
        L4_4 = _id
        L4_4 = L4_4.Inventory_ScissorsTool
        if L3_3 == L4_4 then
          L4_4 = _util
          L4_4 = L4_4.GetVar
          L4_4 = L4_4("fuelClose")
          if L4_4 == 1 then
            function L4_4()
              _util.DisableInput()
              _util.SetCursorPos(650, 160)
              _util.SwitchState("drop", _util.GetSelf())
              repeat
                scriptWait()
                _util.SetCursorPos(650, 160)
              until not _util.IsAnimPlaying(_util.GetSelf())
              _util.AddItem(_id.M5_InventoryFuel)
              _util.EnableInput(true)
              _util.SetCursorPos(650, 160)
              _util.DelItem(_util.GetSelf())
            end
            scriptPlay(L4_4)
          end
        else
          L4_4 = _util
          L4_4 = L4_4.GetVar
          L4_4 = L4_4("fuelClose")
          if L4_4 == 0 then
            L4_4 = _util
            L4_4 = L4_4.AddMonologue
            L4_4(_text.M5_BEACON_FUEL_WRONG, "DialogStrings", _const.END_DIALOG, 0)
          else
            L4_4 = _util
            L4_4 = L4_4.AddMonologue
            L4_4(_text.M5_BEACON_FUEL_WRONG2, "DialogStrings", _const.END_DIALOG, 0)
          end
        end
      end
    end
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.COLLIDED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  L4_4 = _id
  L4_4 = L4_4.Inventory_PuffleRed
  if L3_3 == L4_4 then
    function L4_4()
      _util.SwitchState("pop", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SetSpawn(1, _id.M5_FuelBeach)
      _util.DelItem(_util.GetSelf())
    end
    if _util.GetVar("M5FuelHit") == 0 then
      _util.SetVar("M5FuelHit", 1)
      scriptPlay(L4_4)
    end
  else
    L4_4 = _id
    L4_4 = L4_4.Inventory_PuffleGreen
    if L3_3 == L4_4 then
      L4_4 = _util
      L4_4 = L4_4.AddInventoryItem
      L4_4(_id.M5_InventoryFuel)
      L4_4 = _util
      L4_4 = L4_4.SetVar
      L4_4("fuelTaken", 1)
      L4_4 = _util
      L4_4 = L4_4.AddSubObjective
      L4_4(_text.M5_OBJ1, _text.M5_1SUBOBJ2)
      L4_4 = _util
      L4_4 = L4_4.MarkSubObjComplete
      L4_4(_text.M5_OBJ1, _text.M5_1SUBOBJ2)
      L4_4 = _util
      L4_4 = L4_4.MarkSubObjComplete
      L4_4(_text.M5_OBJ1, _text.M5_1SUBOBJ5)
      L4_4 = _util
      L4_4 = L4_4.GetVar
      L4_4 = L4_4("hotCocoaTaken")
      if L4_4 == 1 then
        L4_4 = _util
        L4_4 = L4_4.GetVar
        L4_4 = L4_4("hotTaken")
        if L4_4 == 1 then
          L4_4 = _util
          L4_4 = L4_4.ClearObjective
          L4_4()
          L4_4 = _util
          L4_4 = L4_4.SetObjective
          L4_4(_text.M5_OBJ2)
          L4_4 = _util
          L4_4 = L4_4.AddObjective
          L4_4(_text.M5_OBJ2)
          L4_4 = _util
          L4_4 = L4_4.MarkObjComplete
          L4_4(_text.M5_OBJ1)
        end
      end
      L4_4 = _util
      L4_4 = L4_4.DelItem
      L4_4(_util.GetSelf())
    end
  end
end
