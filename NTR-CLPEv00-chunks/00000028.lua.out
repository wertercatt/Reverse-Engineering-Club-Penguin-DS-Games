local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("robostatus")
  if L1_1 == 5 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(3371, "DialogStrings", _const.CHANGE_DIALOG, 10)
    elseif L0_0 == 10 then
      L1_1 = _util
      L1_1 = L1_1.PushCamera
      L1_1(_util.GetSelf())
      L1_1 = _util
      L1_1 = L1_1.AddDialogButton
      L1_1(3372, _const.CHANGE_DIALOG, 1)
      L1_1 = _util
      L1_1 = L1_1.AddDialogButton
      L1_1(3373, _const.END_DIALOG, 0)
    elseif L0_0 == 1 then
      function L1_1()
        _util.StartMiniGame(_const.JETPACK, 2)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
          if _util.GetMinigameOutput1() == 0 then
            _util.SetNextRoom(3)
          end
          if _util.GetMinigameOutput1() == 1 then
            _util.SetNextRoom(45)
          end
        until _util.GetGameState() == _const.MISSION
        _util.SetConversationCount(0)
      end
      scriptPlay(L1_1)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M5C1_AnvilHit")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(3370, "DialogStrings", _const.END_DIALOG, 0)
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("robostatus")
      if L1_1 == 4 then
        L1_1 = _util
        L1_1 = L1_1.ActivateNpc
        L1_1(_id.M5C1_SuperRobot_Beacon, 50)
      end
    end
  end
end
