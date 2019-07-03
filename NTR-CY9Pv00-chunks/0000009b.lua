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
if L0_0 == 4 and _util.GetVar("GiftShopItems") ~= 4 and _util.GetVar("M8_FromTown") == 0 then
  _util.SetSpawn(0, 41701)
  _util.SetSpawn(0, 41716)
  _util.SetExitLocked(_id.M8_UGDoortoBoiler, true)
  if _util.GetVar("M8_HerbertDockIntro") == 1 then
    _util.SetExitLocked(_id.M8_TownToGiftShop, true)
  end
  _util.SetCursorPos(500, 105)
end
if L0_0 == 9 and _util.GetVar("balloonchase") == 0 then
  _util.SetVar("balloonchase", 1)
  _util.DelItem(_id.DistantHerbDock1)
end
if L0_0 == 10 then
  if 0 < _util.GetVar("CompletedRebalancingWithDot") then
    _util.SetExitLocked(_id.Doors_Town2Dock, false)
  end
  if 0 < _util.GetVar("CompletedAquaGrabber") then
    _util.SetExitLocked(_id.Doors_Town2Dock, false)
  end
end
