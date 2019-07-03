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
if L0_0 == 2 and L1_1 == 3 then
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
    L3_3 = L3_3("haveFlash")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.AddMonologue
      L3_3(1162)
    else
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("haveFlash")
      if L3_3 ~= 2 then
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("haveFlash")
      elseif L3_3 == 1 then
        if L2_2 == 0 then
          L3_3 = _util
          L3_3 = L3_3.AddMonologue
          L3_3(1163)
        elseif L2_2 == 20 then
          function L3_3()
            _util.StartMiniGame(_const.FLASHLIGHT, 0)
            repeat
              scriptWait()
            until _util.GetGameState() ~= _const.MISSION
            repeat
              scriptWait()
              if _util.GetMinigameOutput1() == 1 and _util.GetVar("M2C3_doneFlashlight") == 0 then
                _util.SetVar("M2C3_doneFlashlight", 1)
                _util.SetNextRoom(28)
                _util.SetExitLocked(_id.Doors_MineCrash2MineLair, false)
              end
            until _util.GetGameState() == _const.MISSION
          end
          scriptPlay(L3_3)
          _util.SetConversationCount(0)
        end
      end
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
    L3_3 = L3_3.Inventory_SpyFlashlight
    if L2_2 == L3_3 then
      L2_2 = _util
      L2_2 = L2_2.AddMonologue
      L3_3 = 1164
      L2_2(L3_3, "DialogStrings", _const.CHANGE_DIALOG, 20)
    end
  end
end
