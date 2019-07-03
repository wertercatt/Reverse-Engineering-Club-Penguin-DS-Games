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
if L0_0 == 1 and L1_1 == 1 then
  _util.HideMap()
  if _util.GetVar("M1C1_introCoffee") == 0 then
    _util.SetObjective(170)
    _util.SetCursorPos(_util.GetX(_id.M1C1_CoffeeShopPuffle), _util.GetY(_id.M1C1_CoffeeShopPuffle))
    _util.ActivateNpc(_id.M1C1_CoffeeShopPuffle, 1)
    _util.SetVar("M1C1_introCoffee", 1)
  end
end
if L0_0 == 2 and L1_1 == 2 then
  _util.EnableSpyPodFunc(_const.FLAG_MECHANODUSTER)
end
if L0_0 == 3 and L1_1 == 3 and _util.GetVar("M3C3_coffeeIntroComplete") == 0 then
  _util.SetCursorPos(_util.GetX(_id.M3C3_Barista), _util.GetY(_id.M3C3_Barista), 1)
  _util.SetCursorPos(_util.GetX(_id.M3C3_Rookie), _util.GetY(_id.M3C3_Rookie))
  _util.ActivateNpc(_id.M3C3_Rookie, 0)
  _util.ShowMap()
end
