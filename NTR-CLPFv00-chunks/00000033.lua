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
  _util.EnableSpyPodFunc(_const.FLAG_SNOWCAT)
  if _util.GetVar("M5C1_SnowcatFailed") == 1 then
    _util.SetVar("M5C1_SnowcatFailed", 0)
  end
  if _util.GetVar("M5C1_intro") < 4 and _util.GetVar("M5C1_introGadget") == 0 then
    _util.SetVar("M5C1_introGadget", 1)
    _util.SetCursorPos(_util.GetX(_id.M5C1_Dot_GR), _util.GetY(_id.M5C1_Dot_GR))
    _util.ActivateNpc(_id.M5C1_Dot_GR, 0)
  end
end
