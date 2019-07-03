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
if L0_0 == 2 and L1_1 == 2 then
  _util.HideMap()
end
if L0_0 == 3 and L1_1 == 3 and _util.GetVar("M3C3_chapterIntroComplete") == 1 and _util.GetVar("M3C3_garysRoomIntroComplete") == 0 then
  _util.ClearCom()
  _util.SetupComNpc(_const.COM_GARY, _id.M3C3_Gary_CR, 0)
  _util.SetCursorPos(_util.GetX(_id.M3C3_Gary_GR), _util.GetY(_id.M3C3_Gary_GR))
  _util.ActivateNpc(_id.M3C3_Gary_GR, 0)
end
