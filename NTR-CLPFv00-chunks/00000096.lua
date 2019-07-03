local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COMBINE
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COMBINE
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetSelf
  L1_1 = L1_1()
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M1C1_haveCard4")
  if L2_2 == 0 then
    L2_2 = _id
    L2_2 = L2_2.M1C1_Card1
    if L1_1 == L2_2 then
      L2_2 = _id
      L2_2 = L2_2.M1C1_Card2
      if L0_0 ~= L2_2 then
        L2_2 = _id
        L2_2 = L2_2.M1C1_Card3
      elseif L0_0 == L2_2 then
        L2_2 = _util
        L2_2 = L2_2.AddMonologue
        L2_2(77)
      end
    else
      L2_2 = _id
      L2_2 = L2_2.M1C1_Card2
      if L1_1 == L2_2 then
        L2_2 = _id
        L2_2 = L2_2.M1C1_Card1
        if L0_0 ~= L2_2 then
          L2_2 = _id
          L2_2 = L2_2.M1C1_Card3
        elseif L0_0 == L2_2 then
          L2_2 = _util
          L2_2 = L2_2.AddMonologue
          L2_2(77)
        end
      else
        L2_2 = _id
        L2_2 = L2_2.M1C1_Card3
        if L1_1 == L2_2 then
          L2_2 = _id
          L2_2 = L2_2.M1C1_Card1
          if L0_0 ~= L2_2 then
            L2_2 = _id
            L2_2 = L2_2.M1C1_Card2
          elseif L0_0 == L2_2 then
            L2_2 = _util
            L2_2 = L2_2.AddMonologue
            L2_2(77)
          end
        end
      end
    end
  else
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M1C1_haveCard4")
    if L2_2 == 1 then
      function L2_2()
        _util.StartMiniGame(_const.JIGSAW, 0)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        if _util.GetMinigameOutput1() == 1 then
          _util.RemoveInventoryItem(_id.M1C1_Card1)
          _util.RemoveInventoryItem(_id.M1C1_Card2)
          _util.RemoveInventoryItem(_id.M1C1_Card3)
          _util.RemoveInventoryItem(_id.M1C1_Card4)
          _util.AddInventoryItem(_id.M1C1_Map)
          _util.SetVar("M1C1_haveMap", 1)
          _util.SetSpawn(0, _id.M1C1_DotInnerTubes)
          _util.SetSpawn(1, _id.M1C1_DotBarrel)
          _util.SetExitLocked(_id.Doors_Dock2Beach, false)
          _util.SetExitLocked(_id.Doors_Beach2Light, false)
        end
      end
      if L1_1 == _id.M1C1_Card1 then
        if L0_0 == _id.M1C1_Card2 or L0_0 == _id.M1C1_Card3 or L0_0 == _id.M1C1_Card4 then
          scriptPlay(L2_2)
        end
      elseif L1_1 == _id.M1C1_Card2 then
        if L0_0 == _id.M1C1_Card1 or L0_0 == _id.M1C1_Card3 or L0_0 == _id.M1C1_Card4 then
          scriptPlay(L2_2)
        end
      elseif L1_1 == _id.M1C1_Card3 then
        if L0_0 == _id.M1C1_Card1 or L0_0 == _id.M1C1_Card2 or L0_0 == _id.M1C1_Card4 then
          scriptPlay(L2_2)
        end
      elseif L1_1 == _id.M1C1_Card4 and (L0_0 == _id.M1C1_Card1 or L0_0 == _id.M1C1_Card2 or L0_0 == _id.M1C1_Card3) then
        scriptPlay(L2_2)
      end
    end
  end
end
