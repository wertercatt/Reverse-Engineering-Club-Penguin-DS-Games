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
if L0_0 == 1 and L1_1 == 1 and _util.GetVar("M1C1_haveCard3") == 1 and _util.GetVar("M1C1_introPlaza") == 0 then
  _util.SetVar("M1C1_introPlaza", 1)
  _util.AddMonologue(139)
end
if L0_0 == 4 and L1_1 == 1 and _util.GetVar("M4C1_RookieStatus") == 0 then
  _util.SetCursorPos(_util.GetX(_id.M4C1_Rookie_Plaza), _util.GetY(_id.M4C1_Rookie_Plaza) + 50)
  _util.ActivateNpc(_id.M4C1_Rookie_Plaza, 0)
end
if L0_0 ~= 5 or _util.GetVar("robostatus") == 0 then
end
