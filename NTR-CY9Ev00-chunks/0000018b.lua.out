local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
spypodCheck(L0_0, L1_1)
mapCheck(L0_0, L1_1)
communicatorCheck(L0_0, L1_1)
if _util.GetVar("SavedDot") == 1 then
  _util.ChangeBaseAnim("NPC/M3/Dot/DotFree", _id.C3_TM_Dot)
  _util.ChangeBaseAnim("MissionObjects/M3/cageDoorOpened", _id.C3_DotsCage)
else
  _util.SetCursorPos(330, 180)
end
if _util.GetVar("windmillfixed") == 2 then
  _util.ChangeBaseAnim("MissionObjects/M3/windmillOn", _id.C3_WindMillStand)
end
