local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
setupItems(L0_0, L1_1)
mapCheck(L0_0, L1_1)
if L0_0 == 7 then
  if _util.GetVar("HaveCornRookie") == 0 and _util.GetVar("FoundCornJPG") == 0 then
    _util.SetExitLocked(_id.Doors_GiftShop2Town, true)
  elseif _util.GetVar("HaveCornRookie") == 1 and _util.GetVar("FoundCornJPG") == 1 then
    _util.SetExitLocked(_id.Doors_GiftShop2Town, false)
  end
  if _util.GetVar("GoTalkToJPG") == 1 then
    _util.SetExitLocked(_id.Doors_GiftShop2Office, false)
  end
  if _util.GetVar("TalkedWithRookie") == 0 then
    _util.SwitchState("examine", _id.M11_GS_NPC_Rookie)
  end
end
if L0_0 == 4 then
  _util.SetExitLocked(_id.Doors_GiftShop2Office, false)
end
