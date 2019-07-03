local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.CREATED
if L2_2 == L3_3 then
  L2_2 = _util
  L2_2 = L2_2.AddInterest
  L3_3 = _const
  L3_3 = L3_3.ITEM_DROPPED
  L2_2(L3_3)
end
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.TOUCHED
if L2_2 == L3_3 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L3_3 = "GiftShopItems"
  L2_2 = L2_2(L3_3)
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.AddPlayerThought
    L3_3 = _text
    L3_3 = L3_3.M8_UG_GIFTSHOP_DOWN
    L2_2(L3_3)
  else
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L3_3 = "GiftShopItems"
    L2_2 = L2_2(L3_3)
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.AddPlayerThought
      L3_3 = _text
      L3_3 = L3_3.M8_GIFTSHOP_BARRELBALLOON
      L2_2(L3_3)
    else
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L3_3 = "GiftShopItems"
      L2_2 = L2_2(L3_3)
      if L2_2 == 2 then
        L2_2 = _util
        L2_2 = L2_2.AddPlayerThought
        L3_3 = _text
        L3_3 = L3_3.M8_GIFTSHOP_NET
        L2_2(L3_3)
      else
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L3_3 = "GiftShopItems"
        L2_2 = L2_2(L3_3)
        if L2_2 == 3 then
          L2_2 = _util
          L2_2 = L2_2.AddPlayerThought
          L3_3 = _text
          L3_3 = L3_3.M8_GIFTSHOP_PEGS
          L2_2(L3_3)
        end
      end
    end
  end
end
if L0_0 == 4 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L3_3 = "M8_GiftShopFalling_setup"
  L2_2 = L2_2(L3_3)
  if L2_2 == 0 then
    function L2_2()
      if _util.GetVar("GiftShopItems") > 0 and _util.GetVar("GiftShopItems") < 4 then
        _util.CutsceneQueueBegin()
        _util.SetSpawn(0, 41701)
        _util.SetSpawn(0, 41716)
        _util.ShowMap()
        _util.DisableInput()
        _util.StartCutscene(_const.TOWNGIFTFAIL1)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        _util.SwapLevel(114, 116)
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.SetVar("M8_FromTown", 0)
        _util.SetVar("GiftShopItems", 0)
        _util.ShowMap()
        _util.EnableInput()
        _util.CutsceneQueueEnd()
      end
    end
    m8_showGiftShopFalling = L2_2
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L3_3 = "M8_GiftShopFalling_setup"
    L2_2(L3_3, 1)
    L2_2 = _util
    L2_2 = L2_2.AddScriptQueue
    L3_3 = 114
    L2_2(L3_3, "m8_showGiftShopFalling", 0, 1)
  end
end
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.ITEM_DROPPED
if L2_2 == L3_3 then
  L2_2 = _util
  L2_2 = L2_2.GetSource
  L2_2 = L2_2()
  L3_3 = _id
  L3_3 = L3_3.Inventory_Balloon
  if L2_2 == L3_3 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("GiftShopItems")
    if L3_3 == 0 then
      function L3_3()
        _util.RemoveInventoryItem(_id.Inventory_Balloon)
        _util.SetVar("GiftShopItems", 1)
        _util.HideMap()
        _util.MarkSubObjComplete(_text.M8_OBJ4, _text.M8_OBJ_4A)
        _util.SetSpawn(1, _id.M8_BalloonOnShop)
        _util.SetSpawn(1, _id.M8_TownNPC1)
        _util.SetSpawn(1, _id.M8_TownNPC2)
        _util.SetSpawn(1, _id.M8_TownGiftShopDropZone)
        if _util.GetVar("tookMapPiece") == 0 then
          if _util.GetVar("M8_FlitHat") == 1 then
            _util.SetSpawn(1, _id.M8_TOWN0_PuffleHat)
            _util.SetSpawn(0, _id.M8_TOWN0_PuffleHappy)
            _util.SetSpawn(0, _id.M8_TOWN0_PuffleSad)
          elseif _util.GetVar("M8_Puffle_HadCookie") == 1 then
            _util.SetSpawn(1, _id.M8_TOWN0_PuffleHappy)
            _util.SetSpawn(0, _id.M8_TOWN0_PuffleHat)
            _util.SetSpawn(0, _id.M8_TOWN0_PuffleSad)
          else
            _util.SetSpawn(1, _id.M8_TOWN0_PuffleSad)
            _util.SetSpawn(0, _id.M8_TOWN0_PuffleHat)
            _util.SetSpawn(0, _id.M8_TOWN0_PuffleHappy)
          end
        end
        _util.StartCutscene(_const.TOWNGIFT1)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        _util.SwapLevel(116, 114)
        _util.SetVar("M8_FromTown", 1)
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.SetVar("M8_FromTown", 0)
        _util.SetCursorPos(500, 105)
        repeat
          scriptWait()
        until 0 + 1 >= 450 or _util.GetVar("GiftShopItems") >= 2 or not _util.IsPlayerInRoom(114)
        if _util.GetVar("GiftShopItems") == 1 and _util.IsPlayerInRoom(114) then
          _util.StartCutscene(_const.TOWNGIFTFAIL1)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          _util.SwapLevel(114, 116)
          _util.SetVar("M8_FromTown", 1)
          repeat
            scriptWait()
          until _util.GetGameState() == _const.MISSION
          _util.SetVar("M8_FromTown", 0)
          _util.SetVar("GiftShopItems", 0)
          _util.ShowMap()
        elseif _util.GetVar("GiftShopItems") == 1 then
          _util.SwapLevel(114, 116)
          _util.SetVar("GiftShopItems", 0)
          _util.ShowMap()
        end
        _util.SetCursorPos(500, 105)
      end
      scriptPlay(L3_3)
    end
  else
    L3_3 = _id
    L3_3 = L3_3.M8_BeachNet
    if L2_2 == L3_3 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("GiftShopItems")
      if L3_3 == 1 then
        function L3_3()
          _util.RemoveInventoryItem(_id.M8_BeachNet)
          _util.SetVar("GiftShopItems", 2)
          _util.SetSpawn(1, 41701)
          _util.SetSpawn(1, 41716)
          _util.StartCutscene(_const.TOWNGIFT2)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          _util.SetVar("M8_FromTown", 1)
          repeat
            scriptWait()
          until _util.GetGameState() == _const.MISSION
          _util.SetVar("M8_FromTown", 0)
          _util.SetCursorPos(500, 105)
          repeat
            scriptWait()
          until 0 + 1 >= 450 or _util.GetVar("GiftShopItems") >= 3 or not _util.IsPlayerInRoom(114)
          if _util.GetVar("GiftShopItems") == 2 and _util.IsPlayerInRoom(114) then
            _util.SetSpawn(0, 41701)
            _util.SetSpawn(0, 41716)
            _util.StartCutscene(_const.TOWNGIFTFAIL1)
            repeat
              scriptWait()
            until _util.GetGameState() ~= _const.MISSION
            _util.SetVar("M8_FromTown", 1)
            _util.SwapLevel(114, 116)
            repeat
              scriptWait()
            until _util.GetGameState() == _const.MISSION
            _util.SetVar("M8_FromTown", 0)
            _util.SetVar("GiftShopItems", 0)
            _util.ShowMap()
          elseif _util.GetVar("GiftShopItems") == 2 then
            _util.SwapLevel(114, 116)
            _util.SetVar("GiftShopItems", 0)
            _util.ShowMap()
          end
          _util.SetCursorPos(500, 105)
        end
        scriptPlay(L3_3)
      end
    else
      L3_3 = _id
      L3_3 = L3_3.Inventory_PegsA
      if L2_2 ~= L3_3 then
        L3_3 = _id
        L3_3 = L3_3.Inventory_PegsB
      else
        if L2_2 == L3_3 then
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("GiftShopItems")
          if L3_3 == 2 then
            function L3_3()
              _util.SetVar("GiftShopItems", 3)
              _util.StartCutscene(_const.TOWNGIFT3)
              repeat
                scriptWait()
              until _util.GetGameState() ~= _const.MISSION
              _util.SetVar("M8_FromTown", 1)
              repeat
                scriptWait()
              until _util.GetGameState() == _const.MISSION
              _util.SetVar("M8_FromTown", 0)
              _util.SetCursorPos(500, 105)
              repeat
                scriptWait()
              until 0 + 1 >= 450 or _util.GetVar("GiftShopItems") >= 4 or not _util.IsPlayerInRoom(114)
              if _util.GetVar("GiftShopItems") == 3 and _util.IsPlayerInRoom(114) then
                _util.SetSpawn(0, 41701)
                _util.SetSpawn(0, 41716)
                _util.StartCutscene(_const.TOWNGIFTFAIL1)
                repeat
                  scriptWait()
                until _util.GetGameState() ~= _const.MISSION
                _util.SetVar("M8_FromTown", 1)
                _util.SwapLevel(114, 116)
                repeat
                  scriptWait()
                until _util.GetGameState() == _const.MISSION
                _util.SetVar("M8_FromTown", 0)
                _util.SetVar("GiftShopItems", 0)
                _util.ShowMap()
              elseif _util.GetVar("GiftShopItems") == 3 then
                _util.SwapLevel(114, 116)
                _util.SetVar("GiftShopItems", 0)
                _util.ShowMap()
              end
              _util.SetCursorPos(500, 105)
            end
            scriptPlay(L3_3)
          end
      end
      else
        L3_3 = _id
        L3_3 = L3_3.Inventory_Hammer
        if L2_2 == L3_3 then
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("GiftShopItems")
          if L3_3 == 3 then
            function L3_3()
              _util.RemoveInventoryItem(_id.Inventory_Hammer)
              if _util.HasInventoryItem(_id.Inventory_PegsA) then
                _util.RemoveInventoryItem(_id.Inventory_PegsA)
              elseif _util.HasInventoryItem(_id.Inventory_PegsB) then
                _util.RemoveInventoryItem(_id.Inventory_PegsB)
              end
              _util.RemoveInventoryItem(_id.Inventory_BalloonBox)
              _util.RemoveInventoryItem(_id.Inventory_Helium)
              if _util.HasInventoryItem(_id.Inventory_Barrel) then
                _util.RemoveInventoryItem(_id.Inventory_Barrel)
              end
              _util.SetVar("GiftShopItems", 4)
              _util.SetSpawn(0, _id.M8_Snowforts2TownTremors)
              _util.SetSpawn(1, _id.M8_Snowforts2Town)
              _util.SetSpawn(0, _id.M8_Dock2TownTremors)
              _util.SetSpawn(1, _id.M8_Dock2Town)
              _util.SetSpawn(0, _id.M8_GiftDoor2UG)
              _util.SetSpawn(1, _id.M8_GiftDoor2Town)
              _util.SetSpawn(0, _id.M8_GiftOfficeWindow1)
              _util.SetSpawn(0, _id.M8_GiftOfficeWindow2)
              _util.SetSpawn(0, 136)
              _util.SetSpawn(1, 60814)
              _util.SetSpawn(0, 236)
              _util.SetSpawn(1, 59105)
              _util.SetSpawn(1, 41660)
              _util.SetSpawn(1, _id.M8_TownNPC1Happy)
              _util.SetSpawn(1, _id.M8_TownNPC2Happy)
              _util.SetSpawn(0, _id.M8_TownNPC1)
              _util.SetSpawn(0, _id.M8_TownNPC2)
              _util.MarkObjComplete(_text.M8_OBJ4)
              _util.ShowMap()
              _util.StartCutscene(_const.TOWNGIFT4)
              repeat
                scriptWait()
              until _util.GetGameState() ~= _const.MISSION
              _util.SetVar("M8_FromTown", 1)
              repeat
                scriptWait()
              until _util.GetGameState() == _const.MISSION
              _util.SetVar("M8_FromTown", 0)
              _util.SetExitLocked(_id.M8_TownToGiftShop, false)
              _util.SetExitLocked(_id.M8_UGDoortoBoiler, false)
              _util.SetCursorPos(500, 105)
              _util.SwapLevel(10, 11)
              _util.SetSpawn(1, _id.M8_Docks_GiftSprite)
              _util.SetSpawn(0, _id.M8_Docks_GiftSunkSprite)
              _util.ActivateNpc(_id.M8_TownNPC1Happy, 0)
            end
            scriptPlay(L3_3)
          end
        end
      end
    end
  end
end
