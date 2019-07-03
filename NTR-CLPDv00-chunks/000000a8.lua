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
if L0_0 == 3 and L1_1 == 3 then
  if _util.GetVar("M3C3_wildernessIntroComplete") == 1 then
    _util.DisableSpyPodFunc(_const.FLAG_SNOWCAT)
  end
  if _util.GetVar("M3C3_wentInCave") == 1 and _util.GetVar("M3C3_Arrived2Mine") == 0 then
    _util.HideMap()
    _util.SetExitLocked(_id.Doors_MineShack2MineInt, true)
    _util.DisableSpyPodFunc(_const.FLAG_SNOWCAT)
    _util.SetVar("M3C3_Arrived2Mine", 1)
    _util.SetCursorPos(_util.GetX(_id.M3C3_Miner), _util.GetY(_id.M3C3_Miner))
    _util.ActivateNpc(_id.M3C3_Miner, 100)
  end
end
if L0_0 == 2 and L1_1 == 3 then
  _util.HideMap()
end
