local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
setupItems(L0_0, L1_1)
spypodCheck(L0_0, L1_1)
communicatorCheck(L0_0, L1_1)
if L0_0 == 1 and L1_1 == 3 then
  if _util.GetVar("M1C3_introStump") == 0 then
    _util.SetExitLocked(_id.Doors_WildPuffle2Berry, true)
    _util.SetExitLocked(_id.Doors_WildPuffle2Cave, true)
    _util.SetExitLocked(_id.Doors_WildPuffle2Clearing, true)
    _util.SetVar("M1C3_introStump", 1)
    _util.SetCursorPos(_util.GetX(_id.M1C3_Fire), _util.GetY(_id.M1C3_Fire))
    _util.ActivateNpc(_id.M1C3_Fire, 1)
  elseif _util.GetVar("M1C3_fireOut") == 1 then
    _util.SwitchState("extinguished", _id.M1C3_Fire)
    _util.SwitchState("extinguished", _id.M1C3_Shelter)
  end
end
