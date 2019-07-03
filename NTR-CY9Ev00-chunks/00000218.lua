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
_util.MarkSubObjComplete(_text.C3_OBJ4, _text.C3_4SUBOBJ1)
if _util.GetVar("SavedRookie") == 1 and _util.GetVar("RescuedPufflesInCage") == 1 then
  _util.MarkSubObjComplete(_text.C3_OBJ4, _text.C3_4SUBOBJ3)
end
if _util.GetVar("gotHat") == 0 then
  _util.ChangeBaseAnim("NPC/M3/Rookie/RookieHatAttempt", _id.C3_TM_Rookie)
elseif _util.GetVar("gotHat") == 1 and _util.GetVar("SavedRookie") == 0 then
  _util.ChangeBaseAnim("NPC/M3/Rookie/RookiePole_idle", _id.C3_TM_Rookie)
end
if _util.GetVar("SavedRookie") == 1 then
  _util.ChangeBaseAnim("NPC/M3/Rookie/RookieNOPole", _id.C3_TM_Rookie)
end
if _util.GetVar("OpenPuffleCage") == 1 and _util.GetVar("RescuedPufflesInCage") == 0 then
  _util.ChangeBaseAnim("MissionObjects/M3/pufCage", _id.PuffleIcCage)
elseif _util.GetVar("RescuedPufflesInCage") == 1 then
  _util.ChangeBaseAnim("MissionObjects/M3/pufCageOpen", _id.PuffleCage)
end
