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
  if L0_0 == 5 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M9_phonePlaced")
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("WatchScreen")
      if L3_3 == 1 then
        function L3_3()
          _util.StartCutscene(_const.HERBSCAMPEND)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          repeat
            scriptWait()
          until _util.GetGameState() == _const.MISSION
          _util.ActivateNpc(_id.M9_GaryHQ, 52)
        end
        scriptPlay(L3_3)
      end
    end
  elseif L0_0 == 7 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M11_watchedGSVid")
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.SetVar
      L3_3("M11_watchedGSVid", 2)
      L3_3 = _util
      L3_3 = L3_3.DelItem
      L3_3(_id.M9_StaticScreen)
      L3_3 = _util
      L3_3 = L3_3.SetSpawn
      L3_3(0, _id.M9_StaticScreen)
      L3_3 = _util
      L3_3 = L3_3.SetExitLocked
      L3_3(_id.Doors_HQ2SportUL, false)
      L3_3 = _util
      L3_3 = L3_3.ShowMap
      L3_3()
      function L3_3()
        _util.StartCutscene(_const.GIFTSHOPSURVEILLANCE)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.SetCursorPos(_util.GetX(_id.M11_HQGaryScreen), _util.GetY(_id.M11_HQGaryScreen))
        _util.ActivateNpc(_id.M11_HQGaryScreen, 20)
      end
      scriptPlay(L3_3)
    end
  end
end
