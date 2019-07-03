local L0_0, L1_1, L2_2
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
  function L0_0()
    _util.SwitchState("tap", _util.GetSelf())
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_util.GetSelf())
    _util.SwitchState("", _util.GetSelf())
  end
  L1_1 = scriptPlay
  L2_2 = L0_0
  L1_1(L2_2)
  L1_1 = _util
  L1_1 = L1_1.GetConversationCount
  L1_1 = L1_1()
  if L1_1 == 0 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M3C2_postgame")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.AddLoopingConv
      L2_2(1639)
      L2_2 = _util
      L2_2 = L2_2.AddLoopingOption
      L2_2(1640, -1, _const.CHANGE_DIALOG, 1)
      L2_2 = _util
      L2_2 = L2_2.AddLoopingOption
      L2_2(1641, -1, _const.END_DIALOG, 0)
    else
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("M3C2_jetpackGameComplete")
      if L2_2 == 0 then
        L2_2 = _util
        L2_2 = L2_2.AddLoopingConv
        L2_2(1642)
        L2_2 = _util
        L2_2 = L2_2.AddLoopingOption
        L2_2(1643, -1, _const.CHANGE_DIALOG, 1)
        L2_2 = _util
        L2_2 = L2_2.AddLoopingOption
        L2_2(1644, -1, _const.END_DIALOG, 0)
      end
    end
  elseif L1_1 == 1 then
    function L2_2()
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
        if _util.GetMinigameOutput1() == 1 then
          _util.ChangeRoom(45)
          _util.SetVar("M3C2_JP_Success", 7)
          _util.SetObjective(804)
        end
      until _util.GetGameState() == _const.MISSION
      _util.SetVar("M3C2_postgame", 1)
      _util.SetConversationCount(0)
    end
    _util.StartMiniGame(_const.JETPACK, 7)
    scriptPlay(L2_2)
  end
end
