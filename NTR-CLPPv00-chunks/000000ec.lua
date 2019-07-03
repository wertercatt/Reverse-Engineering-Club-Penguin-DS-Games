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
  L3_3 = L3_3.TOUCHED
  L2_2(L3_3)
  L2_2 = _util
  L2_2 = L2_2.AddInterest
  L3_3 = _const
  L3_3 = L3_3.ITEM_DROPPED
  L2_2(L3_3)
end
if L0_0 == 1 and L1_1 == 1 then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  L3_3 = _const
  L3_3 = L3_3.TOUCHED
  if L2_2 == L3_3 then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L3_3 = 203
    L2_2(L3_3)
  end
end
if L0_0 == 1 and L1_1 == 3 then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  L3_3 = _const
  L3_3 = L3_3.TOUCHED
  if L2_2 == L3_3 then
    L2_2 = _util
    L2_2 = L2_2.GetConversationCount
    L2_2 = L2_2()
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M1C3_uberVariable")
    if L3_3 < 2 then
      L3_3 = _util
      L3_3 = L3_3.AddMonologue
      L3_3(536)
    else
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("M1C3_uberVariable")
      if L3_3 > 1 then
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("M1C3_uberVariable")
        if L3_3 < 5 then
          L3_3 = _util
          L3_3 = L3_3.AddMonologue
          L3_3(537)
        end
      else
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("M1C3_uberVariable")
        if L3_3 > 4 then
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("M1C3_uberVariable")
          if L3_3 < 6 then
            L3_3 = _util
            L3_3 = L3_3.AddMonologue
            L3_3(538)
          end
        else
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("M1C3_uberVariable")
          if L3_3 == 6 then
            L3_3 = _util
            L3_3 = L3_3.AddMonologue
            L3_3(539)
          else
            L3_3 = _util
            L3_3 = L3_3.GetVar
            L3_3 = L3_3("M1C3_uberVariable")
            if L3_3 == 7 then
              L3_3 = _util
              L3_3 = L3_3.IsSuitcaseItemEquipped
              L3_3 = L3_3(_id.SuitCase_ProBoard)
              if not L3_3 then
                L3_3 = _util
                L3_3 = L3_3.AddMonologue
                L3_3(540)
              end
            else
              L3_3 = _util
              L3_3 = L3_3.GetVar
              L3_3 = L3_3("M1C3_uberVariable")
              if L3_3 == 7 then
                L3_3 = _util
                L3_3 = L3_3.IsSuitcaseItemEquipped
                L3_3 = L3_3(_id.SuitCase_ProBoard)
                if L3_3 then
                  if L2_2 == 0 then
                    L3_3 = _util
                    L3_3 = L3_3.AddMonologue
                    L3_3(541, "DialogStrings", _const.CHANGE_DIALOG, 1)
                  elseif L2_2 == 1 then
                    L3_3 = _util
                    L3_3 = L3_3.AddMonologue
                    L3_3(543, "DialogStrings", _const.CHANGE_DIALOG, 2)
                  elseif L2_2 == 2 then
                    function L3_3()
                      _util.SetConversationCount(0)
                      _util.StartMiniGame(_const.SNOWBOARDING, 0, 2)
                      repeat
                        scriptWait()
                      until _util.GetGameState() ~= _const.MISSION
                      repeat
                        scriptWait()
                        if _util.GetMinigameOutput1() ~= -1 and _util.GetGameState() ~= _const.MISSION and _util.GetMinigameOutput1() == 1 then
                          _util.SetNextRoom(48)
                          _util.SetVar("M1C3_uberVariable", 8)
                          _util.SetObjective(637)
                        end
                      until _util.GetGameState() == _const.MISSION
                    end
                    scriptPlay(L3_3)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
if L0_0 == 4 and L1_1 == 3 then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  L3_3 = _const
  L3_3 = L3_3.TOUCHED
  if L2_2 == L3_3 then
    L2_2 = _util
    L2_2 = L2_2.GetConversationCount
    L2_2 = L2_2()
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M4C3_fightSB")
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.IsSuitcaseItemEquipped
      L3_3 = L3_3(_id.SuitCase_ProBoard)
      if L3_3 then
        if L2_2 == 0 then
          L3_3 = _util
          L3_3 = L3_3.AddMonologue
          L3_3(2624, "DialogStrings", _const.CHANGE_DIALOG, 1)
        elseif L2_2 == 1 then
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("M4C3_triedSnowboarding", 1)
          L3_3 = _util
          L3_3 = L3_3.ChangeRoom
          L3_3(39)
        end
      else
        L3_3 = _util
        L3_3 = L3_3.AddMonologue
        L3_3(2623, "DialogStrings", _const.END_DIALOG, 0)
      end
    else
      L3_3 = _util
      L3_3 = L3_3.AddMonologue
      L3_3(4502, "DialogStrings", _const.END_DIALOG, 0)
    end
  end
end
