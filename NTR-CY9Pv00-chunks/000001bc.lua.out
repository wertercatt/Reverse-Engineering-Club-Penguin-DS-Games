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
if L0_0 == 3 and (_util.HasInventoryItem(_id.M6_RopeB) or _util.HasInventoryItem(_id.M6_GrapplingHook)) then
  _util.DelItem(_id.M6_RopeA)
end
if L0_0 == 3 and _util.GetVar("M6_getTrapped") ~= 1 and _util.GetVar("M6_PuffleEnterCave") == 1 then
  _util.ShowPuffle()
  _util.SetVar("M6_PuffleEnterCave", 0)
end
if L0_0 == 8 then
  _util.AddItem(_id.M6_CaveExit)
end
