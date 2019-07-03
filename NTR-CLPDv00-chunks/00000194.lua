local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
setupItems(L0_0, L1_1)
spypodCheck(L0_0, L1_1)
mapCheck(L0_0, L1_1)
communicatorCheck(L0_0, L1_1)
if L0_0 == 1 and L1_1 == 2 then
  _util.HideMap()
  if _util.GetVar("M1C2_HQKeypadComplete") == 1 and _util.GetVar("M1C2_HQKeypadMiniGameCS") == 0 then
    _util.SetVar("M1C2_HQKeypadMiniGameCS", 1)
    _util.SetCursorPos(_util.GetX(_id.M1C2_HQMicroGameDoor), _util.GetY(_id.M1C2_HQMicroGameDoor))
    _util.ActivateNpc(_id.M1C2_HQMicroGameDoor, 21)
  end
end
if L0_0 == 2 and L1_1 == 2 or L0_0 == 3 and L1_1 == 1 or L0_0 == 1 and L1_1 == 3 then
  _util.AddItem(_id.Doors_HQ2Command)
end
if L0_0 == 5 and _util.GetVar("M5C1_introHQ") == 0 then
  _util.EnableSpyPodFunc(_const.FLAG_HEADQUARTERS)
  _util.SetSpawn(0, _id.M5C1_Dot_Stage)
  _util.SetSpawn(0, _id.M5C1_JPG_Stage)
  _util.SetSpawn(0, _id.M5C1_Rookie_Stage)
  _util.SetSpawn(0, _id.M5C1_PH_Stage)
  _util.SetVar("M5C1_introHQ", 1)
  _util.ClearCom()
end
