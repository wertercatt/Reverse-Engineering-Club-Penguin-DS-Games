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
_util.SetCursorPos(371, 115)
_util.EnablePuffleWhistle()
_util.ShowMap()
if L0_0 == 5 then
  if _util.HasInventoryItem(_id.M9_StickA) or _util.HasInventoryItem(_id.M9_KiteReceiver) or _util.HasInventoryItem(_id.M9_KiteStick) then
    _util.DelItem(_id.M9_StickB)
  end
  if _util.GetVar("M9_canFixMine") == 2 and _util.GetVar("M9_RoryActivated") == 0 then
    _util.SetVar("M9_RoryActivated", 1)
    _util.ActivateNpc(_id.M9_Rory, 4)
  end
  if _util.GetVar("M9_LiftAnvil") == 1 then
    _util.ChangeBaseAnim("MissionObjects/M4/anvilBubble", _id.M9_Anvil)
  end
end
