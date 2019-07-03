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
if L0_0 == 3 and L1_1 == 1 then
  if _util.GetVar("M3C1_introIce") == 0 then
    _util.SetVar("M3C1_foundLoop", 1)
    _util.SetVar("M3C1_introIce", 1)
  end
  if _util.GetVar("M3C3_IceRink_Warp") == 1 then
    _util.SetVar("M3C3_IceRink_Warp", 0)
  end
end
