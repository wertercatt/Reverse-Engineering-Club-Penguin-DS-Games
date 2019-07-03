local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
if L0_0 == 5 then
  L1_1 = _util
  L1_1 = L1_1.HasInventoryItem
  L1_1 = L1_1(_id.M9_StickB)
  if not L1_1 then
    L1_1 = _util
    L1_1 = L1_1.HasInventoryItem
    L1_1 = L1_1(_id.M9_KiteReceiver)
    if not L1_1 then
      L1_1 = _util
      L1_1 = L1_1.HasInventoryItem
      L1_1 = L1_1(_id.M9_KiteStick)
    end
  elseif L1_1 then
    L1_1 = _util
    L1_1 = L1_1.DelItem
    L1_1(_id.M9_StickA)
  end
end
if L0_0 == 9 then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("HerbertTakeOFF")
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.SetCursorPos
    L1_1(725, 41)
    function L1_1()
      local L0_2, L1_3, L2_4, L3_5
      L0_2 = _util
      L0_2 = L0_2.DisableInput
      L0_2()
      L0_2 = 0
      repeat
        L1_3 = scriptWait
        L1_3()
        L0_2 = L0_2 + 1
      until L0_2 >= 30
      L1_3 = _util
      L1_3 = L1_3.PlayHerbertLurking
      L1_3()
      L1_3 = _util
      L1_3 = L1_3.ChangeBaseAnim
      L2_4 = "MissionObjects/M3/NetFly"
      L3_5 = _id
      L3_5 = L3_5.HerbsNetEscape
      L1_3(L2_4, L3_5, "up")
      repeat
        L1_3 = scriptWait
        L1_3()
        L1_3 = _util
        L1_3 = L1_3.IsAnimPlaying
        L2_4 = _id
        L2_4 = L2_4.HerbsNetEscape
        L1_3 = L1_3(L2_4)
      until not L1_3
      L1_3 = _util
      L1_3 = L1_3.DelItem
      L2_4 = _id
      L2_4 = L2_4.HerbsNetEscape
      L1_3(L2_4)
      L0_2 = 0
      repeat
        L1_3 = scriptWait
        L1_3()
        L0_2 = L0_2 + 1
      until L0_2 >= 30
      L1_3 = _util
      L1_3 = L1_3.AddItem
      L2_4 = _id
      L2_4 = L2_4.DistantHerbWoods
      L1_3(L2_4)
      L1_3 = _util
      L1_3 = L1_3.PushCamera
      L2_4 = _id
      L2_4 = L2_4.DistantHerbWoods
      L1_3(L2_4)
      L1_3 = 432
      L2_4 = 23
      L3_5 = 100
      _util.MoveObject(_id.DistantHerbWoods, L1_3, L2_4, L3_5, 1)
      repeat
        scriptWait()
      until L2_4 <= _util.GetY(_id.DistantHerbWoods)
      _util.PopCamera(_id.DistantHerbWoods)
      _util.RestoreSongFromHerbert()
      _util.SetVar("HerbertTakeOFF", 1)
      _util.SetVar("SignalLocation", 2)
      _util.ChangeSignalLocation(_util.GetVar("SignalLocation"))
      if _util.GetVar("balloonchase") == 1 then
        _util.SetVar("balloonchase", 2)
        _util.DelItem(_id.DistantHerbPlaza)
      end
      _util.EnableInput(true)
    end
    scriptPlay(L1_1)
  end
end
