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
if L0_0 == 5 then
  _util.SwapLevel(85, 86)
  if _util.GetVar("M9_canFixMine") == 4 then
    _util.ActivateNpc(_id.M9_Rory, 11)
  end
end
if L0_0 == 7 then
  _util.SetExitLocked(_id.Doors_MineShack2MineInt, true)
  if _util.GetVar("FindSignal") == 1 then
    _util.SetExitLocked(_id.Doors_MineCrash2CornMaze, false)
    _util.AddItem(_id.M11_RookiMineShack)
    _util.DelItem(_id.M11_VillageRookieDVD)
    _util.DelItem(_id.M11_VillageRookie)
  end
end
