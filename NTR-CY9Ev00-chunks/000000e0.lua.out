local L0_0, L1_1, L2_2, L3_3, L4_4
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
  L2_2 = _util
  L2_2 = L2_2.AddInterest
  L3_3 = _const
  L3_3 = L3_3.COLLIDED
  L2_2(L3_3)
end
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
  L4_4 = "snakePuzzleNew"
  L3_3 = L3_3(L4_4)
  if L3_3 == 0 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L4_4 = "Inventory_Goggles_Mode"
    L3_3 = L3_3(L4_4)
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.AddPlayerThought
      L4_4 = _text
      L4_4 = L4_4.M2_FORT_SNOWPILE
      L3_3(L4_4)
    else
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L4_4 = "Inventory_Goggles_Mode"
      L3_3 = L3_3(L4_4)
      if L3_3 == 1 then
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L4_4 = "M2FoundJackhammer"
        L3_3 = L3_3(L4_4)
        if L3_3 == 0 then
          L3_3 = _util
          L3_3 = L3_3.AddPlayerThought
          L4_4 = _text
          L4_4 = L4_4.M2_FORT_SNOWPILE_2
          L3_3(L4_4)
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L4_4 = "M2FoundJackhammer"
          L3_3(L4_4, 1)
        else
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L4_4 = "M2FoundJackhammer"
          L3_3 = L3_3(L4_4)
          if L3_3 == 1 then
            L3_3 = _util
            L3_3 = L3_3.AddPlayerThought
            L4_4 = _text
            L4_4 = L4_4.C3_ROOKIE_HAT_MONOLOGUE
            L3_3(L4_4)
          end
        end
      end
    end
  else
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L4_4 = "snakePuzzleNew"
    L3_3 = L3_3(L4_4)
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.SetVar
      L4_4 = "snakePuzzleNew"
      L3_3(L4_4, 2)
      L3_3 = _util
      L3_3 = L3_3.ChangeBaseAnim
      L4_4 = "MissionObjects/SecretFur/snakeHole"
      L3_3(L4_4, _id.M5_SnowPileNew)
      L3_3 = _util
      L3_3 = L3_3.AddInventoryItem
      L4_4 = _id
      L4_4 = L4_4.M2_JackHammer
      L3_3(L4_4)
    else
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L4_4 = "snakePuzzleNew"
      L3_3 = L3_3(L4_4)
      if L3_3 == 2 then
        L3_3 = _util
        L3_3 = L3_3.AddPlayerThought
        L4_4 = _text
        L4_4 = L4_4.M2_FORT_SNOWPILE_3
        L3_3(L4_4)
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
  L4_4 = _id
  L4_4 = L4_4.M2_JackHammer
  if L3_3 == L4_4 then
    L4_4 = _util
    L4_4 = L4_4.GetVar
    L4_4 = L4_4("snakePuzzleNew")
    if L4_4 == 2 then
      function L4_4()
        _util.StartMiniGame(_const.JACKHAMMERIN, 3, 3)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
          if _util.GetMinigameOutput1() == 1 then
            _util.SetVar("snakePuzzleNew", 3)
            _util.SetSpawn(1, _id.M5_SnakePiece3)
          end
        until _util.GetGameState() == _const.MISSION
        if _util.GetMinigameOutput1() == 1 then
          _util.SetPuffle(_id.Inventory_NoPuffle)
          _util.RemoveInventoryItem(_id.M2_JackHammer)
        end
      end
      scriptPlay(L4_4)
    end
  else
    L4_4 = _id
    L4_4 = L4_4.Inventory_PufflePurple
    if L3_3 == L4_4 then
      L4_4 = _util
      L4_4 = L4_4.GetVar
      L4_4 = L4_4("snakePuzzleNew")
      if L4_4 == 0 then
        L4_4 = _util
        L4_4 = L4_4.GetVar
        L4_4 = L4_4("M2FoundJackhammer")
        if L4_4 == 1 then
          L4_4 = _util
          L4_4 = L4_4.SetSuccess
          L4_4(_util.GetSelf(), true)
        end
      end
    else
      L4_4 = _id
      L4_4 = L4_4.Inventory_PufflePurple
      if L3_3 == L4_4 then
        L4_4 = _util
        L4_4 = L4_4.GetVar
        L4_4 = L4_4("snakePuzzleNew")
        if L4_4 == 0 then
          L4_4 = _util
          L4_4 = L4_4.GetVar
          L4_4 = L4_4("Inventory_Goggles_Mode")
          if L4_4 == 1 then
            L4_4 = _util
            L4_4 = L4_4.SetSuccess
            L4_4(_util.GetSelf(), true)
          end
        end
      else
        L4_4 = _id
        L4_4 = L4_4.Inventory_PuffleBlack
        if L3_3 == L4_4 then
          L4_4 = _util
          L4_4 = L4_4.GetVar
          L4_4 = L4_4("snakePuzzleNew")
          if L4_4 == 0 then
            L4_4 = _util
            L4_4 = L4_4.GetVar
            L4_4 = L4_4("M2FoundJackhammer")
            if L4_4 == 1 then
              L4_4 = _util
              L4_4 = L4_4.SetSuccess
              L4_4(_util.GetSelf(), true)
            end
          end
        else
          L4_4 = _id
          L4_4 = L4_4.Inventory_PuffleBlack
          if L3_3 == L4_4 then
            L4_4 = _util
            L4_4 = L4_4.GetVar
            L4_4 = L4_4("snakePuzzleNew")
            if L4_4 == 0 then
              L4_4 = _util
              L4_4 = L4_4.GetVar
              L4_4 = L4_4("Inventory_Goggles_Mode")
              if L4_4 == 1 then
                L4_4 = _util
                L4_4 = L4_4.SetSuccess
                L4_4(_util.GetSelf(), true)
              end
            end
          else
            L4_4 = _util
            L4_4 = L4_4.GetVar
            L4_4 = L4_4("Inventory_Goggles_Mode")
            if L4_4 == 1 then
              L4_4 = _util
              L4_4 = L4_4.GetVar
              L4_4 = L4_4("snakePuzzleNew")
              if L4_4 == 0 then
                L4_4 = _util
                L4_4 = L4_4.ChangeBaseAnim
                L4_4("MissionObjects/SecretFur/snowPile_goggle", _id.M5_SnowPileNew)
                L4_4 = _util
                L4_4 = L4_4.AddPlayerThought
                L4_4(_text.C3_ROOKIE_HAT_MONOLOGUE)
              end
            end
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
  L4_4 = L4_4.Inventory_PufflePurple
  if L3_3 == L4_4 then
    function L4_4()
      _util.DisableInput()
      _util.ChangeBaseAnim("MissionObjects/SecretFur/snowPile", _id.M5_SnowPileNew, "bubble")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M5_SnowPileNew)
      _util.ChangeBaseAnim("MissionObjects/SecretFur/snowPileJackhammer", _id.M5_SnowPileNew)
      _util.SetVar("snakePuzzleNew", 1)
      _util.EnableInput(true)
    end
    scriptPlay(L4_4)
  end
  L4_4 = _id
  L4_4 = L4_4.Inventory_PuffleBlack
  if L3_3 == L4_4 then
    function L4_4()
      _util.DisableInput()
      repeat
        scriptWait()
      until 0 + 1 > 40
      _util.ChangeBaseAnim("MissionObjects/SecretFur/snowPile", _id.M5_SnowPileNew, "melt")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M5_SnowPileNew)
      _util.ChangeBaseAnim("MissionObjects/SecretFur/snowPileJackhammer", _id.M5_SnowPileNew)
      _util.SetVar("snakePuzzleNew", 1)
      _util.EnableInput(true)
    end
    scriptPlay(L4_4)
  end
end
