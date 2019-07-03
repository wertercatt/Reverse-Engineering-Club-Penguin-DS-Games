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
if L0_0 == 8 and _util.GetVar("C2_Event") == _id.C2_EscapedHerbBase then
  _util.ActivateNpc(_id.C2_WildernessBerry_JPG, 0)
  _util.MarkObjComplete(_text.C2_OBJ7)
end
if L0_0 == 9 and _util.GetVar("balloonchase") == 6 then
  _util.SetVar("balloonchase", 7)
  _util.DelItem(_id.DistantHerbWilderness)
end
