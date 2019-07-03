local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetVar
L3_3 = "C1_Event"
L2_2 = L2_2(L3_3)
L3_3 = spypodCheck
L3_3(L0_0, L1_1)
L3_3 = mapCheck
L3_3(L0_0, L1_1)
L3_3 = communicatorCheck
L3_3(L0_0, L1_1)
L3_3 = _util
L3_3 = L3_3.GetVar
L3_3 = L3_3("RookieFlyUpCliff")
if L3_3 == 1 then
  L3_3 = _util
  L3_3 = L3_3.ChangeBaseAnim
  L3_3("NPC/M1/Rookie/RookieUpCliffWithFish", _id.M1_T7_Rookie)
else
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L3_3 = L3_3("RookieFlyUpCliff")
  if L3_3 == 2 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/M1/Rookie/RookieUpCliff", _id.M1_T7_Rookie)
  end
end
L3_3 = _util
L3_3 = L3_3.GetVar
L3_3 = L3_3("C1_PuffleHitTarget2")
if L3_3 == 1 then
  L3_3 = _util
  L3_3 = L3_3.ChangeBaseAnim
  L3_3("MissionObjects/M1/TargetSmashed", _id.M1_Target01)
end
L3_3 = _util
L3_3 = L3_3.GetVar
L3_3 = L3_3("C1_PuffleHitTarget3")
if L3_3 == 1 then
  L3_3 = _util
  L3_3 = L3_3.ChangeBaseAnim
  L3_3("MissionObjects/M1/TargetSmashed", _id.M1_Target02)
end
L3_3 = _util
L3_3 = L3_3.GetVar
L3_3 = L3_3("C1_PuffleHitTarget1")
if L3_3 == 1 then
  L3_3 = _util
  L3_3 = L3_3.ChangeBaseAnim
  L3_3("MissionObjects/M1/hangTargetSmashed", _id.M1_HangingTarget01)
end
L3_3 = _util
L3_3 = L3_3.GetVar
L3_3 = L3_3("C1_OBJ1Incomplete")
if L3_3 == 0 then
  L3_3 = _util
  L3_3 = L3_3.SetVar
  L3_3("C1_OBJ1Incomplete", 1)
  L3_3 = _util
  L3_3 = L3_3.MarkSubObjComplete
  L3_3(_text.C1_OBJ1, _text.C1_1SUBOBJ1)
  L3_3 = _util
  L3_3 = L3_3.AddSubObjective
  L3_3(_text.C1_OBJ1, _text.C1_1SUBOBJ2)
end
L3_3 = _id
L3_3 = L3_3.C1_bentDoorAttempted
if L2_2 == L3_3 then
  L3_3 = _util
  L3_3 = L3_3.SetVar
  L3_3("C1_foo", 1)
  L3_3 = _util
  L3_3 = L3_3.ChangeBaseAnim
  L3_3("NPC/M1/Rookie/RookieUpCliff", _id.M1_T7_Rookie)
else
  L3_3 = _id
  L3_3 = L3_3.C1_bentDoorWon
  if L2_2 == L3_3 then
    L3_3 = _util
    L3_3 = L3_3.RemoveInventoryItem
    L3_3(_id.C1_InventoryItem_JetPackNStickComplete)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/M1/Rookie/RookieUpCliff", _id.M1_T7_Rookie)
    L3_3 = _util
    L3_3 = L3_3.SetExitLocked
    L3_3(_id.Doors_C1_MetalBarDoor, false)
    L3_3 = _util
    L3_3 = L3_3.ActivateNpc
    L3_3(_id.M1_T7_Rookie, 8)
  else
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("C1_PuffleHitTarget1")
    if L3_3 == 2 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("C1_FirstTimeHere")
      if L3_3 == 0 then
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("C1_FirstTimeHere", 1)
        L3_3 = _util
        L3_3 = L3_3.AddItem
        L3_3(_id.M1_T7_Dot)
        L3_3 = _util
        L3_3 = L3_3.AddItem
        L3_3(_id.M1_T7_JPG)
        L3_3 = _util
        L3_3 = L3_3.MarkObjComplete
        L3_3(_text.C1_OBJ6)
        L3_3 = _util
        L3_3 = L3_3.AddObjective
        L3_3(_text.C1_OBJ7)
        L3_3 = _util
        L3_3 = L3_3.AddSubObjective
        L3_3(_text.C1_OBJ7, _text.C1_7SUBOBJ1)
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("C1_TC7_idleHook_dot", 0)
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("C1_TC7_idleHook_jpg", 0)
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("C1_TC7_idleHook_rookie", 0)
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("C1_TC7_touchedDoor", 0)
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("C1_TC7_talked_jpg", 0)
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("C1_TC7_talked_dot", 0)
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("C1_TC7_talked_rookie", 0)
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("C1_TC7_requestItemHook_dot", 0)
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("C1_TC7_requestItemHook_jpg", 0)
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("C1_TC7_requestItemHook_rookie", 0)
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("C1_TC7_doneHook_dot", 0)
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("C1_TC7_doneHook_jpg", 0)
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("C1_TC7_doneHook_rookie", 0)
        L3_3 = _util
        L3_3 = L3_3.SetCursorPos
        L3_3(_util.GetX(_id.M1_T7_Dot), _util.GetY(_id.M1_T7_Dot))
        L3_3 = _util
        L3_3 = L3_3.ActivateNpc
        L3_3(_id.M1_T7_Dot, 0)
      end
    end
  end
end
L3_3 = _util
L3_3 = L3_3.GetVar
L3_3 = L3_3("C1_Event")
if L3_3 == _id.C1_pufflesUnlocked then
  L3_3 = _util
  L3_3 = L3_3.SetSpawn
  L3_3(0, _id.M1_TC_JPG)
  L3_3 = _util
  L3_3 = L3_3.SetSpawn
  L3_3(0, _id.M1_TC_Dot)
  L3_3 = _util
  L3_3 = L3_3.SetSpawn
  L3_3(0, _id.M1_TC_Rookie)
  L3_3 = _util
  L3_3 = L3_3.SetSpawn
  L3_3(0, _id.M1_TC_PuffleHandler)
end
L3_3 = _util
L3_3 = L3_3.GetVar
L3_3 = L3_3("C1_GaveJetPack")
if L3_3 == 1 then
  L3_3 = _util
  L3_3 = L3_3.ChangeBaseAnim
  L3_3("NPC/M1/JetPackGuy/jpgCaveNoPac", _id.M1_T7_JPG)
end
L3_3 = _util
L3_3 = L3_3.GetExitLocked
L3_3 = L3_3(_id.Doors_C1_TrainingRoom)
if L3_3 == true then
  function L3_3()
    if _util.GetVar("C1_Targetlight") == 0 then
      _util.ChangeBaseAnim("MissionObjects/M1/doorLight", _id.C1_DoorTargetLight1)
      _util.ChangeBaseAnim("MissionObjects/M1/doorLight", _id.C1_DoorTargetLight2)
      _util.ChangeBaseAnim("MissionObjects/M1/doorLight", _id.C1_DoorTargetLight3)
    elseif _util.GetVar("C1_Targetlight") == 1 then
      _util.ChangeBaseAnim("MissionObjects/M1/doorLight", _id.C1_DoorTargetLight2)
      _util.ChangeBaseAnim("MissionObjects/M1/doorLight", _id.C1_DoorTargetLight3)
    elseif _util.GetVar("C1_Targetlight") == 2 then
      _util.ChangeBaseAnim("MissionObjects/M1/doorLight", _id.C1_DoorTargetLight3)
    end
  end
  scriptPlay(L3_3)
else
  function L3_3()
    _util.ChangeBaseAnim("MissionObjects/M1/doorLight", _id.C1_DoorTargetLight1, "on")
    _util.ChangeBaseAnim("MissionObjects/M1/doorLight", _id.C1_DoorTargetLight2, "on")
    _util.ChangeBaseAnim("MissionObjects/M1/doorLight", _id.C1_DoorTargetLight3, "on")
  end
  scriptPlay(L3_3)
end
L3_3 = _util
L3_3 = L3_3.GetVar
L3_3 = L3_3("C1_DoorsAreBent")
if L3_3 == 1 then
  L3_3 = _util
  L3_3 = L3_3.ChangeBaseAnim
  L3_3("MissionObjects/M1/MetalDoorOpen", _id.C1_MetalBars, "belt")
end
