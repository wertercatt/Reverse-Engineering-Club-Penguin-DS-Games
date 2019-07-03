local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
communicatorCheck(L0_0, L1_1)
if L0_0 == 4 and _util.GetVar("hitBoiler") == 2 then
  _util.SetExitLocked(_id.Doors_NightClubTremors2Boiler, false)
end
