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
if L0_0 == 10 then
  if _util.GetVar("OctoFloat") == 0 then
    _util.ChangeBaseAnim("MissionObjects/M4/floatFestival_string", _id.C4_Attic_FestivalFloat)
  elseif _util.GetVar("OctoTaken") == 0 then
    _util.ChangeBaseAnim("MissionObjects/M4/floatFestival", _id.C4_Attic_FestivalFloat)
  else
    _util.ChangeBaseAnim("MissionObjects/M4/floatFestival_empty", _id.C4_Attic_FestivalFloat)
  end
end
