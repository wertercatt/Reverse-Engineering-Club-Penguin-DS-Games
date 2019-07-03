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
if L0_0 == 3 then
  if _util.GetVar("M6_SkiHillComplete") == 0 and _util.GetVar("M6_TlatorBroken") == 1 then
    _util.DisableInput()
    _util.SetCursorPos(313, 118)
    _util.SetVar("M6_SkiHillComplete", 1)
    _util.SetVar("M6_SportComplete", 1)
    _util.SetVar("M6_HQComplete", 1)
    _util.SetVar("M6_KlutzyTouched", 0)
    _util.SetExitLocked(_id.M6_door2wilderness, false)
    _util.ActivateNpc(_id.M5_SkiHill_Klutzy, 0)
  end
elseif L0_0 == 9 and _util.GetVar("balloonchase") == 4 then
  _util.SetVar("balloonchase", 5)
  _util.AddItem(_id.DistantHerbSkiHill)
  _util.DelItem(_id.DistantHerbDock2)
end
if _util.GetVar("c2_talkedToGaryCom") == 2 and _util.GetVar("C2_Event") ~= _id.C2_MeetAtForrest then
  _util.LaunchCommunicator()
end
