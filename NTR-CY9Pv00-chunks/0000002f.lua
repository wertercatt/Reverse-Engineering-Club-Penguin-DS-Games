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
end
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
if L2_2 == _const.TOUCHED then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("LanternOn")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("CombinedMapPeices")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("wrongTurn")
      if L2_2 == 0 then
        L2_2 = _util
        L2_2 = L2_2.ChangeRoom
        L2_2(79)
        L2_2 = _util
        L2_2 = L2_2.SetVar
        L2_2("wrongTurn", 1)
      else
        L2_2 = _util
        L2_2 = L2_2.ChangeRoom
        L2_2(80)
      end
    else
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("CombinedMapPeices")
      if L2_2 == 1 then
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L2_2 = L2_2("CompletedMazeGame")
        if L2_2 == 1 then
          L2_2 = _util
          L2_2 = L2_2.GetVar
          L2_2 = L2_2("GiftShopItems")
          if L2_2 ~= 4 then
            L2_2 = _util
            L2_2 = L2_2.SetVar
            L2_2("GiftShopItems", 0)
            L2_2 = _util
            L2_2 = L2_2.SetExitLocked
            L2_2(_id.M8_UGDoortoBoiler, true)
            L2_2 = _util
            L2_2 = L2_2.AddObjective
            L2_2(_text.M8_OBJ4)
            L2_2 = _util
            L2_2 = L2_2.ChangeRoom
            L2_2(126)
          else
            L2_2 = _util
            L2_2 = L2_2.ChangeRoom
            L2_2(127)
          end
        else
          L2_2 = _util
          L2_2 = L2_2.GetVar
          L2_2 = L2_2("CompletedMazeGame")
          if L2_2 == 0 then
            L2_2 = _util
            L2_2 = L2_2.GetVar
            L2_2 = L2_2("mazeDoors")
            if L2_2 == 0 then
              L2_2 = _util
              L2_2 = L2_2.SetVar
              L2_2("wrongTurn", 1)
              function L2_2()
                _util.StartMiniGame(_const.LABYRINTH, 4)
                repeat
                  scriptWait()
                until _util.GetGameState() ~= _const.MISSION
                repeat
                  scriptWait()
                  if _util.GetMinigameOutput1() == 1 and false == false then
                    if _util.GetVar("GiftShopItems") ~= 4 then
                      _util.SetVar("GiftShopItems", 0)
                      _util.SetExitLocked(_id.M8_UGDoortoBoiler, true)
                      _util.AddObjective(_text.M8_OBJ4)
                      _util.SetVar("CompletedMazeGame", 1)
                      _util.SetNextRoom(126)
                    else
                      _util.SetVar("CompletedMazeGame", 1)
                      _util.SetNextRoom(127)
                    end
                  end
                until _util.GetGameState() == _const.MISSION
              end
              scriptPlay(L2_2)
            else
              L2_2 = _util
              L2_2 = L2_2.GetVar
              L2_2 = L2_2("mazeDoors")
              if L2_2 == 1 then
                L2_2 = _util
                L2_2 = L2_2.ChangeRoom
                L2_2(79)
                L2_2 = _util
                L2_2 = L2_2.SetVar
                L2_2("mazeDoors", 2)
              else
                L2_2 = _util
                L2_2 = L2_2.GetVar
                L2_2 = L2_2("mazeDoors")
                if L2_2 == 2 then
                  L2_2 = _util
                  L2_2 = L2_2.ChangeRoom
                  L2_2(78)
                  L2_2 = _util
                  L2_2 = L2_2.SetVar
                  L2_2("mazeDoors", 3)
                  L2_2 = _util
                  L2_2 = L2_2.SetVar
                  L2_2("wrongTurn", 1)
                else
                  L2_2 = _util
                  L2_2 = L2_2.GetVar
                  L2_2 = L2_2("mazeDoors")
                  if L2_2 == 3 then
                    L2_2 = _util
                    L2_2 = L2_2.ChangeRoom
                    L2_2(79)
                    L2_2 = _util
                    L2_2 = L2_2.SetVar
                    L2_2("mazeDoors", 4)
                    L2_2 = _util
                    L2_2 = L2_2.SetVar
                    L2_2("wrongTurn", 1)
                  else
                    L2_2 = _util
                    L2_2 = L2_2.GetVar
                    L2_2 = L2_2("mazeDoors")
                    if L2_2 == 4 then
                      L2_2 = _util
                      L2_2 = L2_2.ChangeRoom
                      L2_2(78)
                      L2_2 = _util
                      L2_2 = L2_2.SetVar
                      L2_2("mazeDoors", 5)
                    else
                      L2_2 = _util
                      L2_2 = L2_2.ChangeRoom
                      L2_2(80)
                      L2_2 = _util
                      L2_2 = L2_2.SetVar
                      L2_2("wrongTurn", 0)
                      L2_2 = _util
                      L2_2 = L2_2.SetVar
                      L2_2("mazeDoors", 0)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  else
    L2_2 = _util
    L2_2 = L2_2.AddPlayerThought
    L2_2(_text.TUNNELS_NOLANTERN)
  end
end
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
if L2_2 == _const.ITEM_DROPPED then
  L2_2 = _util
  L2_2 = L2_2.GetSource
  L2_2 = L2_2()
  if L2_2 == _id.M8_InvLantern_Off then
    _util.SetVar("LanternOn", 1)
  end
end
