local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
setupItems(L0_0, L1_1)
spypodCheck(L0_0, L1_1)
communicatorCheck(L0_0, L1_1)
if L0_0 == 3 or L1_1 == 3 then
  _util.HideMap()
end
if L0_0 == 3 and L1_1 == 3 then
  if _util.GetVar("M3C3_SnowcatFailed") == 1 then
    _util.SetVar("M3C3_SnowcatFailed", 0)
  end
  if _util.GetVar("M3C3_wildernessIntroComplete") == 0 then
    _util.ClearCom()
    _util.SetupComNpc(_const.COM_GARY, _id.M3C3_Gary_CR, 0)
    _util.DisableSpyPodFunc(_const.FLAG_SNOWCAT)
    _util.SetCursorPos(_util.GetX(_id.Doors_WildCaveDoor2CaveInt), _util.GetY(_id.Doors_WildCaveDoor2CaveInt))
    _util.ActivateNpc(_id.Doors_WildCaveDoor2CaveInt, 100)
    _util.SetExitLocked(_id.Doors_Gadget2HQ, false)
    _util.SetSpawn(0, _id.M3C3_SnowCatDoor)
    _util.SetSpawn(0, _id.M3C3_SnowCat0)
  elseif _util.GetVar("M3C3_talkedToCatOnce") == 0 and _util.GetVar("M3C3_WasLockedIn") == 1 then
    _util.SetCursorPos(_util.GetX(_id.M3C3_SnowCat2), _util.GetY(_id.M3C3_SnowCat2))
    _util.ActivateNpc(_id.M3C3_SnowCat2, 0)
  end
end
