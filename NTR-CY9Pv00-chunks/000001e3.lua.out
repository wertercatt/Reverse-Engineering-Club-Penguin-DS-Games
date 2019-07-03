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
if L0_0 == 5 and _util.GetVar("M9_phonePlaced") == 1 then
  _util.AddItem(_id.M9_SpyPhone1)
  if _util.GetVar("M9_treeCamIn") == 65503 then
    _util.SetX(153, _id.M9_SpyPhone1)
    _util.SetY(68, _id.M9_SpyPhone1)
  elseif _util.GetVar("M9_treeCamIn") == 65447 then
    _util.SetX(681, _id.M9_SpyPhone1)
    _util.SetY(60, _id.M9_SpyPhone1)
  end
end
if L0_0 == 8 then
  _util.AddObjective(_text.C2_2SUBOBJ1)
  if _util.GetVar("FoundAllBPPieces") < 4 then
    _util.HideMap()
    _util.SetExitLocked(_id.C2_HerbCamp2SkiLodge, true)
    _util.DisableSpyPodFunc(_const.FLAG_HEADQUARTERS)
  else
    _util.ShowMap()
    _util.SetExitLocked(_id.C2_HerbCamp2SkiLodge, false)
    _util.EnableSpyPodFunc(_const.FLAG_HEADQUARTERS)
  end
  if _util.GetVar("c2_talkedToGaryCom") == 1 then
    _util.SetVar("c2_talkedToGaryCom", 2)
  end
  if _util.GetVar("iceDumped") == 1 then
    _util.ChangeBaseAnim("MissionObjects/M2/bucket_flipped", _id.C2_Bucket)
  elseif _util.GetVar("iceDumped") == 2 then
    _util.ChangeBaseAnim("MissionObjects/M2/bucket_noice", _id.C2_Bucket)
  end
  if _util.GetVar("moveHeavyRock") == 1 then
    _util.ChangeBaseAnim("MissionObjects/M2/heavyRock_lift", _id.C2_HeavyRock)
  end
  if _util.GetVar("BPFall") == 1 then
    _util.ChangeBaseAnim("MissionObjects/M2/blueprintPieceB_fallen", _id.C2_BlueprintTree)
  end
end
