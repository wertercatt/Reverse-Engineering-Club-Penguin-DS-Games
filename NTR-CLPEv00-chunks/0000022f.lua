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
if L0_0 == 4 and L1_1 == 2 then
  if _util.GetVar("M4C2_introOffice") == 0 then
    _util.AddMonologue(2522)
    if _util.IsCommandCoachActive() == 1 then
      _util.AddItem(_id.Inventory_CreamPie)
    end
    _util.SetVar("M4C2_introOffice", 1)
  end
  if _util.GetVar("M4C2_haveWB") == 1 then
    _util.ShowMap()
  else
    _util.HideMap()
  end
end
if L0_0 == 5 then
end
