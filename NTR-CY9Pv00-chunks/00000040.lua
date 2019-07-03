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
if L0_0 == 2 then
  _util.DelItem(342)
  _util.SetSpawn(0, 342)
  _util.EnablePuffleWhistle()
  _util.ShowMap()
  if _util.GetVar("milkFixed") == 1 and _util.GetVar("hotOn") == 1 and _util.GetVar("thankedForService") == 0 then
    _util.SetVar("M5_coffeeMachineFixed", 1)
    _util.ActivateNpc(_id.M5_BaristaInCreature, 15)
  end
end
