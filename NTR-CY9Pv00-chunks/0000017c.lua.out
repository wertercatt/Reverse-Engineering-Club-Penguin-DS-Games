local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("C2_SearchHerbsOldBase")
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddPlayerThought
    L1_1(_text.C2_KEYPAD_ROCK)
  end
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("FoundHatchDoor")
  if L1_1 == 1 then
    function L1_1()
      _util.ChangeBaseAnim("MissionObjects/M2/fakeRockB", _id.C2_FakeRock2, "blank")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C2_Stump)
      _util.ChangeBaseAnim("MissionObjects/M2/fakeRockB")
    end
    scriptPlay(L1_1)
  end
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("GrabHatchKey")
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("C2_Event")
    if L1_1 == _id.C2_CombinedGridPaper then
      L1_1 = _util
      L1_1 = L1_1.ChangeBaseAnim
      L1_1("MissionObjects/M2/fakeRockB", _id.C2_FakeRock2, "flip")
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("GrabHatchKey", 1)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("GrabHatchKey")
    if L1_1 == 1 then
      function L1_1()
        local L0_2
        L0_2 = _util
        L0_2 = L0_2.SetNextRoom
        L0_2(133)
        L0_2 = _util
        L0_2 = L0_2.StartMiniGame
        L0_2(_const.GRIDPUZZLE, 0)
        repeat
          L0_2 = scriptWait
          L0_2()
          L0_2 = _util
          L0_2 = L0_2.GetGameState
          L0_2 = L0_2()
        until L0_2 ~= _const.MISSION
        repeat
          L0_2 = scriptWait
          L0_2()
          L0_2 = _util
          L0_2 = L0_2.GetGameState
          L0_2 = L0_2()
        until L0_2 == _const.MISSION
        L0_2 = _util
        L0_2 = L0_2.GetMinigameOutput1
        L0_2 = L0_2()
        if L0_2 == 1 then
          L0_2 = _util
          L0_2 = L0_2.MarkObjComplete
          L0_2(_text.C2_OBJ4)
          function L0_2()
            _util.PushCamera(_id.C2_Stump)
            _util.DisableInput()
            _util.ChangeBaseAnim("MissionObjects/M2/stump", _id.C2_Stump, "open")
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.C2_Stump)
            _util.ChangeBaseAnim("MissionObjects/M2/stumpOpen", _id.C2_Stump)
            _util.PopCamera(_id.C2_Stump)
            repeat
              scriptWait()
            until 0 + 1 > 40
            _util.SetVar("GrabHatchKey", 2)
            _util.EnableInput(true)
            _util.ClearCom()
            _util.SetupComNpc(_const.COM_JPG, _id.C2_Wilderness_JPG, 2)
            _util.LaunchCommunicator()
          end
          scriptPlay(L0_2)
          _util.AddObjective(_text.C2_OBJ6)
          _util.AddSubObjective(_text.C2_OBJ6, _text.C2_6SUBOBJ1A, true)
          _util.AddSubObjective(_text.C2_OBJ6, _text.C2_6SUBOBJ1, true)
          _util.AddSubObjective(_text.C2_OBJ6, _text.C2_6SUBOBJ2, true)
          _util.AddItem(_id.C2_Hatch)
          _util.ChangeBaseAnim("MissionObjects/M2/fakeRockB")
          _util.SetVar("FoundHatchDoor", 1)
        end
      end
      scriptPlay(L1_1)
    end
  end
end
