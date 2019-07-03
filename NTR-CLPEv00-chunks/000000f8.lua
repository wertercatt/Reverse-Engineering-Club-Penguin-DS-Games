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
if L0_0 == 3 and L1_1 == 2 then
  L2_2 = _util
  L2_2 = L2_2.HideMap
  L2_2()
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M3C2_JPGGone")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.SetCursorPos
    L2_2(_util.GetX(_id.M3C2_PH_TallestM), _util.GetY(_id.M3C2_PH_TallestM))
    L2_2 = _util
    L2_2 = L2_2.ActivateNpc
    L2_2(_id.M3C2_TallestM_JPG, 0)
    L2_2 = _util
    L2_2 = L2_2.SetPuffle
    L2_2(_id.Inventory_PuffleGreen)
    L2_2 = _util
    L2_2 = L2_2.EnablePuffle
    L2_2(_const.FLAG_GREEN)
  end
end
if L0_0 == 4 and L1_1 == 3 then
  L2_2 = _util
  L2_2 = L2_2.HideMap
  L2_2()
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M4C3_introTM")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("M4C3_introTM", 1)
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L2_2(2822, "DialogStrings", _const.CHANGE_NPC, _id.M4C3_Bag1, 101)
  end
end
if L0_0 == 5 then
  L2_2 = _util
  L2_2 = L2_2.HideMap
  L2_2()
  L2_2 = _util
  L2_2 = L2_2.DisableSpyPodFunc
  L2_2(_const.FLAG_HEADQUARTERS)
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("robostatus")
  if L2_2 <= 5 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M5C1_TallestMIntro")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L2_2("M5C1_TallestMIntro", 1)
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L2_2("robostatus", 5)
      L2_2 = _util
      L2_2 = L2_2.SetCursorPos
      L2_2(_util.GetX(_id.M5C1_SuperRobot_TM1), _util.GetY(_id.M5C1_SuperRobot_TM1))
      L2_2 = _util
      L2_2 = L2_2.ActivateNpc
      L2_2(_id.M5C1_SuperRobot_TM1, 100)
    end
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("robostatus")
  if L2_2 > 6 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M5C1_BrokeJetPack")
    if L2_2 == 0 then
      function L2_2()
        _util.DisableInput()
        _util.PushCamera(_id.M5C1_MountainJetPack)
        _util.SwitchState("disable", _id.M5C1_MountainJetPack)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M5C1_MountainJetPack)
        _util.AddItem(_id.M5C1_MountainJetPackBroken)
        _util.DelItem(_id.M5C1_MountainJetPack)
        _util.EnableInput()
        _util.SetVar("M5C1_BrokeJetPack", 1)
        _util.PopCamera(_id.M3C2_JetpackMtn)
      end
      scriptPlay(L2_2)
    end
  end
end
