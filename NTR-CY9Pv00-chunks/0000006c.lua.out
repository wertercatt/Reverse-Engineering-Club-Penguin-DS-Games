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
end
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.TOUCHED and L0_0 == 7 then
  L3_3 = _util
  L3_3 = L3_3.GetExitLocked
  L3_3 = L3_3(_util.GetSelf())
  if L3_3 == false then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M11_playedLab")
    if L3_3 == 0 then
      function L3_3()
        _util.StartMiniGame(_const.LABYRINTH, 5)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
          if _util.GetMinigameOutput1() == 1 and false == false then
            _util.HideMap()
            _util.SetVar("M11_playedLab", 1)
            _util.SetNextRoom(23)
            _util.MarkObjComplete(_text.M11_OBJ4)
            _util.AddObjective(_text.M11_OBJ5)
            _util.SetVar("mazeDoors", 4)
          end
        until _util.GetGameState() == _const.MISSION
      end
      scriptPlay(L3_3)
    end
  end
end
