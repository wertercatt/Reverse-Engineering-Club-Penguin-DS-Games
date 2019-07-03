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
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L3_3 = L3_3("hitBoiler")
  if L3_3 == 1 then
    function L3_3()
      _util.StartMiniGame(_const.PIPEDREAMS, 0)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.SetVar("hitBoiler", 2)
        _util.MarkObjComplete(_text.M8_OBJ_5B)
        _util.ClearCom()
        _util.SetupComNpc(_const.COM_GARY, _id.M8_GaryHQ, 0)
        _util.DelItem(60966)
        _util.DelItem(61132)
        _util.AddItem(61272)
        _util.SetSpawn(1, 34763)
        _util.SetSpawn(0, 33384)
        _util.SetExitLocked(380, false)
        _util.SetExitLocked(61079, false)
        _util.SetExitLocked(344, false)
        _util.LaunchCommunicator()
      end
    end
    scriptPlay(L3_3)
  else
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("hitBoiler")
    if L3_3 == 2 then
      L3_3 = _util
      L3_3 = L3_3.AddPlayerThought
      L3_3(_text.M8_BOILER_FIXED)
    end
  end
end
