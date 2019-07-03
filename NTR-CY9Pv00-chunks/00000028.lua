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
_util.HideMap()
_util.SetVar("M7_MapOff", 1)
if L0_0 == 7 then
  _util.EnableSpyPodFunc(_const.FLAG_WRENCH)
  if _util.GetVar("DVDItemNum") == _id.M11_DVDsInBox then
    _util.ChangeBaseAnim("MissionObjects/M11/DVDsled", _id.M11_DVD_Movie, "")
  elseif _util.GetVar("DVDItemNum") == _id.M11_DVDs2 then
    _util.ChangeBaseAnim("MissionObjects/M11/DVDawards", _id.M11_DVD_Movie, "")
  end
end
_util.DisablePuffleWhistle()
_util.SetPuffle(_id.Inventory_NoPuffle)
