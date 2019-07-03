local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = setupItems
L2_2(L0_0, L1_1)
L2_2 = spypodCheck
L2_2(L0_0, L1_1)
L2_2 = mapCheck
L2_2(L0_0, L1_1)
L2_2 = communicatorCheck
L2_2(L0_0, L1_1)
if L0_0 == 2 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M5_shadowSpawned")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M5_focusedOnShadow")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.SetSong
      L2_2(22, true)
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L2_2("M5_focusedOnShadow", 1)
      L2_2 = _util
      L2_2 = L2_2.ClearObjective
      L2_2()
      L2_2 = _util
      L2_2 = L2_2.ActivateNpc
      L2_2(_id.M5_Shadow, 0)
    end
  end
end
if L0_0 == 5 then
  L2_2 = _util
  L2_2 = L2_2.HasInventoryItem
  L2_2 = L2_2(_id.M9_SpyCamera)
  if L2_2 then
    function L2_2()
      local L0_3
      L0_3 = 500
      repeat
        L0_3 = L0_3 - 1
        scriptWait()
      until L0_3 <= 0 or not _util.IsPlayerInRoom(31)
      if L0_3 == 0 and _util.GetGameState() == _const.MISSION then
        _util.AddMonologue(_text.M9_FISHING_HINT, "DialogStrings", _const.END_DIALOG, 0)
      end
    end
    scriptPlay(L2_2)
  end
end
if L0_0 == 3 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M6_Cave_wasSnowedIn")
  if L2_2 == 2 then
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("M6_Cave_wasSnowedIn", 3)
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M6_lever")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.PushCamera
    L2_2(_id.M6_Shifter)
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("OverheardHerbert")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.ActivateNpc
    L2_2(_id.M6_HerbChopper, 0)
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M6_HerbertComm")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("M6_HerbertComm", 0)
    L2_2 = _util
    L2_2 = L2_2.ActivateNpc
    L2_2(_id.M6_Fishing_Gary, 102)
  end
end
