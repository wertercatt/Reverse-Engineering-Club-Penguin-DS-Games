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
if L0_0 == 3 then
  if _util.GetVar("M6_SportComplete") == 0 and _util.GetVar("M6_TlatorBroken") == 1 then
    _util.SetCursorPos(711, 100)
    _util.SetVar("M6_SportComplete", 1)
    _util.ActivateNpc(_id.M5_Sport_Klutzy, 0)
  elseif _util.GetVar("M6_SkiVillageComplete") == 1 or _util.GetVar("M6_SkiHillComplete") == 1 then
    _util.DelItem(_id.M5_Sport_Klutzy)
  end
end
if L0_0 == 4 and _util.HasInventoryItem(_id.Inventory_PegsB) then
  _util.DelItem(_id.Inventory_PegsA)
end
