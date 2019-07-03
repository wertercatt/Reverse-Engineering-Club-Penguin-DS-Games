local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
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
if L3_3 == _const.TOUCHED then
  if L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("foundShadow")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.AddSubObjective
      L3_3(_text.M5_OBJ3, _text.M5_3SUBOBJ1)
      L3_3 = _util
      L3_3 = L3_3.MarkObjComplete
      L3_3(_text.M5_OBJ3)
      L3_3 = _util
      L3_3 = L3_3.AddObjective
      L3_3(_text.M5_OBJ5)
      L3_3 = _util
      L3_3 = L3_3.SetObjective
      L3_3(_text.M5_OBJ5)
      L3_3 = _util
      L3_3 = L3_3.HasInventoryItem
      L3_3 = L3_3(_id.M5_InventoryTrap)
      if not L3_3 then
        L3_3 = _util
        L3_3 = L3_3.HasInventoryItem
        L3_3 = L3_3(_id.M5_InventoryRope)
        if not L3_3 then
          L3_3 = _util
          L3_3 = L3_3.AddSubObjective
          L3_3(_text.M5_OBJ5, _text.M5_5SUBOBJ1)
        end
        L3_3 = _util
        L3_3 = L3_3.HasInventoryItem
        L3_3 = L3_3(_id.M5_InventoryNet)
        if not L3_3 then
          L3_3 = _util
          L3_3 = L3_3.AddSubObjective
          L3_3(_text.M5_OBJ5, _text.M5_5SUBOBJ2)
        end
        L3_3 = _util
        L3_3 = L3_3.HasInventoryItem
        L3_3 = L3_3(_id.M5_InventoryCandle)
        if not L3_3 then
          L3_3 = _util
          L3_3 = L3_3.AddSubObjective
          L3_3(_text.M5_OBJ5, _text.M5_5SUBOBJ3)
        end
      end
      L3_3 = _util
      L3_3 = L3_3.MarkSubObjComplete
      L3_3(_text.M5_OBJ3, _text.M5_3SUBOBJ1)
    end
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("foundShadow", 1)
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M5_FISHINGHOLE_SHADOW_GREET, _const.END_DIALOG, 1)
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M5_FISHINGHOLE_SHADOW_GREET2_23, _const.CHANGE_DIALOG, 2)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M5_FISHINGHOLE_SHADOW_GREET3, _const.END_DIALOG, 0)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M5_FISHINGHOLE_SHADOW_CANDLEDROP, _const.CHANGE_DIALOG, 4)
  elseif L2_2 == 4 then
    function L3_3()
      _util.StartCutscene(_const.CAPTUREKLUTZY)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.SetCursorPos(150, 90)
      _util.AddItem(_id.M5_KluztyInventory)
      _util.ClearObjective()
      _util.SetObjective(_text.M5_3SUBOBJ4)
      _util.AddSubObjective(_text.M5_OBJ3, _text.M5_3SUBOBJ4)
      _util.SetVar("caughtCrab", 1)
      _util.AddItem(_id.M5_CleanFur)
      _util.DelItem(55781)
      _util.DelItem(55647)
      _util.DelItem(55680)
      _util.DelItem(_id.M5_Shadow)
    end
    scriptPlay(L3_3)
  end
end
