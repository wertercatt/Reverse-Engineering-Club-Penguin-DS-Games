local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = 41321
L3_3 = 33599
L4_4 = 42298
L5_5 = _util
L5_5 = L5_5.GetReason
L5_5 = L5_5()
L6_6 = _const
L6_6 = L6_6.CREATED
if L5_5 == L6_6 then
  L5_5 = _util
  L5_5 = L5_5.AddInterest
  L6_6 = _const
  L6_6 = L6_6.ITEM_DROPPED
  L5_5(L6_6)
end
L5_5 = _util
L5_5 = L5_5.GetReason
L5_5 = L5_5()
L6_6 = _const
L6_6 = L6_6.TOUCHED
if L5_5 == L6_6 then
  L5_5 = _util
  L5_5 = L5_5.GetVar
  L6_6 = "GiftShopIsUp"
  L5_5 = L5_5(L6_6)
  if L5_5 == 0 then
    L5_5 = _util
    L5_5 = L5_5.GetVar
    L6_6 = "GiftShopItems"
    L5_5 = L5_5(L6_6)
    if L5_5 == 0 then
      L5_5 = _util
      L5_5 = L5_5.AddPlayerThought
      L6_6 = _text
      L6_6 = L6_6.M8_UG_GIFTSHOP_DOWN
      L5_5(L6_6)
    else
      L5_5 = _util
      L5_5 = L5_5.GetVar
      L6_6 = "GiftShopItems"
      L5_5 = L5_5(L6_6)
      if L5_5 == 1 then
        L5_5 = _util
        L5_5 = L5_5.AddPlayerThought
        L6_6 = _text
        L6_6 = L6_6.M8_GIFTSHOP_BARRELBALLOON
        L5_5(L6_6)
      else
        L5_5 = _util
        L5_5 = L5_5.GetVar
        L6_6 = "GiftShopItems"
        L5_5 = L5_5(L6_6)
        if L5_5 == 2 then
          L5_5 = _util
          L5_5 = L5_5.AddPlayerThought
          L6_6 = _text
          L6_6 = L6_6.M8_GIFTSHOP_NET
          L5_5(L6_6)
        else
          L5_5 = _util
          L5_5 = L5_5.GetVar
          L6_6 = "GiftShopItems"
          L5_5 = L5_5(L6_6)
          if L5_5 == 3 then
            L5_5 = _util
            L5_5 = L5_5.AddPlayerThought
            L6_6 = _text
            L6_6 = L6_6.M8_GIFTSHOP_PEGS
            L5_5(L6_6)
          end
        end
      end
    end
  end
end
L5_5 = _util
L5_5 = L5_5.GetReason
L5_5 = L5_5()
L6_6 = _const
L6_6 = L6_6.ITEM_DROPPED
if L5_5 == L6_6 then
  L5_5 = _util
  L5_5 = L5_5.GetSource
  L5_5 = L5_5()
  L6_6 = _util
  L6_6 = L6_6.SetVar
  L7_7 = "takeBarrel"
  L6_6(L7_7, 1)
  if L5_5 == L4_4 then
    function L6_6()
      _util.RemoveInventoryItem(_UPVALUE0_)
      _util.SetVar("GiftShopItems", 1)
      _util.HideMap()
      _util.MarkSubObjComplete(_text.M8_OBJ4, _text.M8_OBJ_4A)
      _util.StartCutscene(_const.UGGIFT1)
      _util.SetCursorPos(205, 115)
      repeat
        scriptWait()
      until 450 <= 0 + 1 or _util.GetVar("GiftShopItems") >= 2 or not _util.IsPlayerInRoom(127)
      if _util.GetVar("GiftShopItems") == 1 and _util.IsPlayerInRoom(127) then
        _util.SetNextRoom(126)
        _util.StartCutscene(_const.UGGIFTFAIL1)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.SetVar("GiftShopItems", 0)
        _util.ShowMap()
      end
      _util.SetCursorPos(205, 115)
    end
    function L7_7()
      _util.StartMiniGame(_const.BARREL, 0)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 2 then
        scriptPlay(_UPVALUE0_)
      elseif _util.GetMinigameOutput1() == 0 then
        _util.RemoveInventoryItem(_UPVALUE1_)
      end
    end
    scriptPlay(L7_7)
  else
    L6_6 = _id
    L6_6 = L6_6.M8_BeachNet
    if L5_5 == L6_6 then
      L6_6 = _util
      L6_6 = L6_6.GetVar
      L7_7 = "GiftShopItems"
      L6_6 = L6_6(L7_7)
      if L6_6 == 1 then
        function L6_6()
          _util.RemoveInventoryItem(_id.M8_BeachNet)
          _util.SetVar("GiftShopItems", 2)
          _util.SetSpawn(1, _id.M8_UGGiftSodaR)
          _util.SetSpawn(1, _id.M8_UGGiftSodaL)
          _util.StartCutscene(_const.UGGIFT2)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          repeat
            scriptWait()
          until _util.GetGameState() == _const.MISSION
          _util.SetCursorPos(205, 115)
          repeat
            scriptWait()
          until 450 <= 0 + 1 or _util.GetVar("GiftShopItems") >= 3 or not _util.IsPlayerInRoom(127)
          if _util.GetVar("GiftShopItems") == 2 and _util.IsPlayerInRoom(127) then
            _util.SetNextRoom(126)
            _util.SetSpawn(0, _id.M8_UGGiftSodaR)
            _util.SetSpawn(0, _id.M8_UGGiftSodaL)
            _util.StartCutscene(_const.UGGIFTFAIL2)
            repeat
              scriptWait()
            until _util.GetGameState() ~= _const.MISSION
            repeat
              scriptWait()
            until _util.GetGameState() == _const.MISSION
            _util.SetVar("GiftShopItems", 0)
            _util.ShowMap()
          end
          _util.SetCursorPos(205, 115)
        end
        L7_7 = scriptPlay
        L7_7(L6_6)
      end
    else
      L6_6 = _id
      L6_6 = L6_6.Inventory_PegsA
      if L5_5 ~= L6_6 then
        L6_6 = _id
        L6_6 = L6_6.Inventory_PegsB
      else
        if L5_5 == L6_6 then
          L6_6 = _util
          L6_6 = L6_6.GetVar
          L7_7 = "GiftShopItems"
          L6_6 = L6_6(L7_7)
          if L6_6 == 2 then
            function L6_6()
              _util.SetVar("GiftShopItems", 3)
              _util.StartCutscene(_const.UGGIFT3)
              repeat
                scriptWait()
              until _util.GetGameState() ~= _const.MISSION
              repeat
                scriptWait()
              until _util.GetGameState() == _const.MISSION
              _util.SetCursorPos(205, 115)
              repeat
                scriptWait()
              until 450 <= 0 + 1 or _util.GetVar("GiftShopItems") >= 4 or not _util.IsPlayerInRoom(127)
              if _util.GetVar("GiftShopItems") == 3 and _util.IsPlayerInRoom(127) then
                _util.SetNextRoom(126)
                _util.SetSpawn(0, _id.M8_UGGiftSodaR)
                _util.SetSpawn(0, _id.M8_UGGiftSodaL)
                _util.StartCutscene(_const.UGGIFTFAIL3)
                repeat
                  scriptWait()
                until _util.GetGameState() ~= _const.MISSION
                repeat
                  scriptWait()
                until _util.GetGameState() == _const.MISSION
                _util.SetVar("GiftShopItems", 0)
                _util.ShowMap()
              end
              _util.SetCursorPos(205, 115)
            end
            L7_7 = scriptPlay
            L7_7(L6_6)
          end
      end
      elseif L5_5 == L3_3 then
        L6_6 = _util
        L6_6 = L6_6.GetVar
        L7_7 = "GiftShopItems"
        L6_6 = L6_6(L7_7)
        if L6_6 == 3 then
          function L6_6()
            _util.RemoveInventoryItem(_UPVALUE0_)
            if _util.HasInventoryItem(_id.Inventory_PegsA) then
              _util.RemoveInventoryItem(_id.Inventory_PegsA)
            elseif _util.HasInventoryItem(_id.Inventory_PegsB) then
              _util.RemoveInventoryItem(_id.Inventory_PegsB)
            end
            if _util.HasInventoryItem(_id.Inventory_Helium) then
              _util.RemoveInventoryItem(_id.Inventory_Helium)
            end
            if _util.HasInventoryItem(_id.Inventory_BalloonBox) then
              _util.RemoveInventoryItem(_id.Inventory_BalloonBox)
            end
            if _util.HasInventoryItem(_id.Inventory_Balloon) then
              _util.RemoveInventoryItem(_id.Inventory_Balloon)
            end
            _util.SetSpawn(1, _id.M8_TownNPC1Happy)
            _util.SetSpawn(1, _id.M8_TownNPC2Happy)
            _util.SetSpawn(0, _id.M8_TownNPC1)
            _util.SetSpawn(0, _id.M8_TownNPC2)
            _util.SetSpawn(0, _id.M8_Snowforts2TownTremors)
            _util.SetSpawn(1, _id.M8_Snowforts2Town)
            _util.SetSpawn(0, _id.M8_Dock2TownTremors)
            _util.SetSpawn(1, _id.M8_Dock2Town)
            _util.SetSpawn(0, _id.M8_GiftDoor2UG)
            _util.SetSpawn(1, _id.M8_GiftDoor2Town)
            _util.SetSpawn(0, 136)
            _util.SetSpawn(1, 60814)
            _util.SetSpawn(0, 236)
            _util.SetSpawn(1, 59105)
            _util.SetSpawn(0, _id.M8_GiftOfficeWindow1)
            _util.SetSpawn(0, _id.M8_GiftOfficeWindow2)
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
            _util.SetVar("GiftShopItems", 4)
            _util.SetExitLocked(_id.M8_UGDoortoBoiler, false)
            _util.SetExitLocked(_id.M8_TownToGiftShop, false)
            _util.MarkObjComplete(_text.M8_OBJ4)
            _util.ShowMap()
            _util.StartCutscene(_const.UGGIFT4)
            _util.SetSpawn(1, _id.M8_Docks_GiftSprite)
            _util.SetSpawn(0, _id.M8_Docks_GiftSunkSprite)
            _util.SwapLevel(114, 116)
            repeat
              scriptWait()
            until _util.GetGameState() ~= _const.MISSION
            repeat
              scriptWait()
            until _util.GetGameState() == _const.MISSION
            _util.SetCursorPos(205, 115)
            _util.DelItem(59)
            _util.SwapLevel(10, 11)
            _util.SetVar("GiftShopIsUp", 1)
          end
          L7_7 = scriptPlay
          L7_7(L6_6)
        end
      end
    end
  end
end
