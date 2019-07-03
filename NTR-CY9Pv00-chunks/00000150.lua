local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
spypodCheck(L0_0, L1_1)
mapCheck(L0_0, L1_1)
communicatorCheck(L0_0, L1_1)
if L0_0 == 2 then
  if _util.GetVar("hotOn") == 1 then
    _util.ChangeBaseAnim("Location/CoffeeMachine/cocaDialHot", _id.M5_ColdKnob)
  end
  _util.DisablePuffleWhistle()
  _util.SetPuffle(_id.Inventory_NoPuffle)
end
