local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = setupItems
L2_2(L0_0, L1_1)
L2_2 = spypodCheck
L2_2(L0_0, L1_1)
L2_2 = mapCheck
L2_2(L0_0, L1_1)
L2_2 = communicatorCheck
L2_2(L0_0, L1_1)
if L0_0 == 7 then
  L2_2 = _util
  L2_2 = L2_2.HideMap
  L2_2()
  function L2_2()
    _util.DisableInput()
    _util.AddItem(_id.M11_VillageRookiePop)
    _util.AddItem(_id.M11_VillageGary)
    _util.AddItem(_id.M11_VillageDot)
    _util.AddItem(_id.M11_VillageJPGPop)
    _util.ChangeBaseAnim("NPC/M11/Rookie/RookiePop", _id.M11_VillageRookiePop, "immerge")
    _util.ChangeBaseAnim("NPC/M11/Gary/GaryPop", _id.M11_VillageGary, "immerge")
    _util.ChangeBaseAnim("NPC/M11/Dot/DotPop", _id.M11_VillageDot, "immerge")
    _util.ChangeBaseAnim("NPC/M11/JetPackGuy/JPGPop", _id.M11_VillageJPGPop, "immerge")
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.M11_VillageRookiePop) and not _util.IsAnimPlaying(_id.M11_VillageRookiePop) and not _util.IsAnimPlaying(_id.M11_VillageRookiePop) and not _util.IsAnimPlaying(_id.M11_VillageRookiePop)
    _util.EnableInput()
    _util.ActivateNpc(_id.M11_VillageNPCBrownPPop, 19)
  end
  scriptPlay(L2_2)
end
